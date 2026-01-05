FROM golang:1.22-bullseye AS builder

WORKDIR /app
ENV GO111MODULE=on
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app main.go


FROM gcr.io/distroless/base-debian12
WORKDIR /app

COPY --from=builder /app/app .
EXPOSE 8080
CMD ["./app"]
