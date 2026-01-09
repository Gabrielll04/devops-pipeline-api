package main

import (
	"net/http"
	"net/http/httptest"
	"testing"
	"strings"
)

func TestHealthHandler(t *testing.T) {
	server := NewServer()

	req := httptest.NewRequest(http.MethodGet, "/health", nil)
	rec := httptest.NewRecorder()

	server.ServeHTTP(rec, req)

	if rec.Code != http.StatusOK {
		t.Fatalf("expected status 200, got %d", rec.Code)
	}

	body := strings.TrimSpace(rec.Body.String())
	if body != "ok" {
		t.Fatalf("expected body 'ok', got '%s'", body)
	}
}
