# Stage 1: Build
FROM python:3.9-slim as builder
WORKDIR /app

# Kopiere die Python-Datei
COPY hello.py .

# Stage 2: Runtime
FROM python:3.9-slim
WORKDIR /app

# Kopiere die Dateien aus dem Builder-Image
COPY --from=builder /app/hello.py .

# Führe die Python-Anwendung aus
CMD ["python", "hello.py"]
