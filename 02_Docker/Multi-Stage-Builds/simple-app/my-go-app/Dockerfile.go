# Stage 1: Build
FROM golang:1.17 as builder
LABEL maintainer="Credo Ngoukeng (credongoukeng@gmail.com)"

WORKDIR /app
COPY . .

# Build the application
RUN go mod download \
    && go build -o my-app

# Stage 2: Runtime
FROM alpine:latest

WORKDIR /app

# Kopiere nur das aus der vorherigen Stufe, was für die Ausführung notwendig ist
COPY --from=builder /app/my-app .

CMD ["./my-app"]
