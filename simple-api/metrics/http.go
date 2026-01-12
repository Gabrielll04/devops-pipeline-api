package metrics

import "github.com/prometheus/client_golang/prometheus"

var HttpRequests = prometheus.NewCounterVec(
	prometheus.CounterOpts{
		Namespace: "simple_api",
		Subsystem: "http",
		Name:      "requests_total",
		Help:      "Total number of HTTP requests",
	},
	[]string{"method", "path", "status"},
)
