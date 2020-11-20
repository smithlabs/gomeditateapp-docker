package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	// Serve the web app static website content from this dir
	fs := http.FileServer(http.Dir("./static"))
	http.Handle("/", fs)

	// Print simple text so Terratest can query /health
	http.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Online!\n")
	})

	// Start the server on port 8080 :)
	log.Println("Listening on :8080...")
	err := http.ListenAndServe(":8080", nil)

	if err != nil {
		log.Fatal(err)
	}
}
