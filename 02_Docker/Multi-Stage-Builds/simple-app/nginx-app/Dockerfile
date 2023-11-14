# Stage 1: Build
FROM node:latest as builder
WORKDIR /app

# Kopiere die HTML-Dateien
COPY html /app

# Stage 2: Runtime
FROM nginx:latest
WORKDIR /usr/share/nginx/html

# Kopiere die HTML-Dateien aus dem Builder-Image
COPY --from=builder /app .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
