package server

import (
	"context"
	"errors"
	"log/slog"
	"os"

	"cloud.google.com/go/firestore"
	"google.golang.org/api/iterator"
)

func probeFirestore(ctx context.Context) error {
	project, ok := os.LookupEnv("GCP_PROJECT")
	if !ok {
		slog.ErrorContext(ctx, "misconfiguration: GCP_PROJECT not set")
		return errors.New("server misconfigured")
	}
	database, ok := os.LookupEnv("FIRESTORE_DATABASE")
	if !ok {
		slog.ErrorContext(ctx, "misconfiguration: FIRESTORE_DATABASE not set")
		return errors.New("server misconfigured")
	}

	client, err := firestore.NewClientWithDatabase(ctx, project, database)
	if err != nil {
		slog.ErrorContext(ctx, "failed to get client", slog.Any("err", err))
		return errors.New("failed to establish client")
	}

	_, _, err = client.Collection("users").Add(ctx, map[string]interface{}{
		"first":  "Alan",
		"middle": "Mathison",
		"last":   "Turing",
		"born":   1912,
	})
	if err != nil {
		slog.ErrorContext(ctx, "failed to write", slog.Any("err", err))
		return errors.New("failed to write")
	}

	iter := client.Collection("users").Documents(ctx)
	for {
		doc, err := iter.Next()
		if err == iterator.Done {
			break
		}
		if err != nil {
			slog.ErrorContext(ctx, "failed to read", slog.Any("err", err))
			return errors.New("failed to read")
		}

		_, err = doc.Ref.Delete(ctx)
		if err != nil {
			slog.ErrorContext(ctx, "failed to delete", slog.Any("err", err))
			return errors.New("failed to delete")
		}

	}
	return nil
}
