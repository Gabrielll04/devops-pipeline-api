package main

import (
	"net/http"
	"simple-api/handler"
	"simple-api/metrics"
	"simple-api/middleware"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)

func NewServer() http.Handler {
	prometheus.MustRegister(metrics.HttpRequests)

	mux := http.NewServeMux()
	mux.HandleFunc("/health", handler.Health)
	mux.Handle("/metrics", promhttp.Handler())

	return middleware.Metrics(mux)
}

func main() {
	server := NewServer()
	http.ListenAndServe(":8080", server)
}