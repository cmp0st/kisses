package main

import (
	"context"
	"log"

	"github.com/cmp0st/kisses/server/internal/server"
)

func main() {
	if err := server.Run(context.Background()); err != nil {
		log.Fatalln(err)
	}
}
