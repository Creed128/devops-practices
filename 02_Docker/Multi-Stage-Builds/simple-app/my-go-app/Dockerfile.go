# Stage 1: Build
FROM golang:1.19 as builder
LABEL maintainer="Credo Ngoukeng (credongoukeng@gmail.com)"

WORKDIR /app
COPY . .

# Build the application
RUN go build -o main .

# Stage 2: Runtime
FROM alpine:latest

WORKDIR /app

# Copy only what is necessary for runtime from the previous stage
COPY --from=builder /app/main .

CMD ["./main"]
