# Stage 1: Build
FROM python:latest as builder
WORKDIR /app

# Kopiere die Anwendungsdateien
COPY app.py .
COPY requirements.txt .

# Installiere Abhängigkeiten (falls vorhanden)
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Runtime
FROM python:latest
WORKDIR /app

# Kopiere nur das aus der vorherigen Stufe, was für die Ausführung notwendig ist
COPY --from=builder /app .

# Führe die Anwendung aus
CMD ["python", "app.py"]
