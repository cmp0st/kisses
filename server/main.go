package main

import (
	"log"

	"github.com/cmp0st/kisses/server/internal/server"
)

func main() {
	if err := server.Run(); err != nil {
		log.Fatalln(err)
	}
}
