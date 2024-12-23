package main

import (
	"fmt"
	"log"
	"log/slog"
	"net/http"
	"os"

	"cloud.google.com/go/firestore"
	"google.golang.org/api/iterator"
)

func ServeHTTP(w http.ResponseWriter, r *http.Request) {
	ctx := r.Context()
	project, ok := os.LookupEnv("GCP_PROJECT")
	if !ok {
		slog.ErrorContext(ctx, "misconfiguration: GCP_PROJECT not set")
		http.Error(w, "server misconfigured", http.StatusInternalServerError)
		return
	}
	database, ok := os.LookupEnv("FIRESTORE_DATABASE")
	if !ok {
		slog.ErrorContext(ctx, "misconfiguration: FIRESTORE_DATABASE not set")
		http.Error(w, "server misconfigured", http.StatusInternalServerError)
		return
	}

	client, err := firestore.NewClientWithDatabase(ctx, project, database)
	if err != nil {
		slog.ErrorContext(ctx, "failed to get client", slog.Any("err", err))
		http.Error(w, "failed to establish client", http.StatusInternalServerError)
		return
	}

	_, _, err = client.Collection("users").Add(ctx, map[string]interface{}{
		"first":  "Alan",
		"middle": "Mathison",
		"last":   "Turing",
		"born":   1912,
	})
	if err != nil {
		slog.ErrorContext(ctx, "failed to write", slog.Any("err", err))
		http.Error(w, "failed to write", http.StatusInternalServerError)
		return
	}

	iter := client.Collection("users").Documents(ctx)
	for {
		doc, err := iter.Next()
		if err == iterator.Done {
			break
		}
		if err != nil {
			slog.ErrorContext(ctx, "failed to read", slog.Any("err", err))
			http.Error(w, "failed to read", http.StatusInternalServerError)
			return
		}
		fmt.Fprintln(w, doc.Data())
		_, err = doc.Ref.Delete(ctx)
		if err != nil {
			slog.ErrorContext(ctx, "failed to delete", slog.Any("err", err))
			http.Error(w, "failed to delete", http.StatusInternalServerError)
			return
		}
	}
}

func main() {
	http.HandleFunc(`/`, ServeHTTP)
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatalln(err)
	}
}
