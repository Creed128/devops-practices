# Stage 1: Build
FROM nginx:alpine as builder
WORKDIR /app

# Kopiere die HTML-Dateien
COPY index.html .

# Stage 2: Runtime
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Kopiere die Dateien aus dem Builder-Image
COPY --from=builder /app/index.html .

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]