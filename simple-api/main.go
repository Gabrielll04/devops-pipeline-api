package main

import (
	"net/http"
	"simple-api/handler"
)

func NewServer() http.Handler {
	mux := http.NewServeMux()
	mux.HandleFunc("/health", handler.Health)
	return mux
}

func main() {
	server := NewServer()
	http.ListenAndServe(":8080", server)
}