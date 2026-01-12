package middleware

import (
	"net/http"
	"simple-api/metrics"
)

type statusRecorder struct {
	http.ResponseWriter
	status int
}

func (r *statusRecorder) WriteHeader(code int) {
	r.status = code
	r.ResponseWriter.WriteHeader(code)
}

func Metrics(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		rec := &statusRecorder{
			ResponseWriter: w,
			status:         200,
		}

		next.ServeHTTP(rec, r)

		metrics.HttpRequests.WithLabelValues(
			r.Method,
			r.URL.Path,
			http.StatusText(rec.status),
		).Inc()
	})
}
