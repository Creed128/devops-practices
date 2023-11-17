# Stage 1: Build
FROM openjdk:11 as builder
WORKDIR /app

# Kopiere die Java-Dateien
COPY ../testfiles/hello.java .

# Kompiliere die Java-Anwendung
RUN javac hello.java

# Stage 2: Runtime
FROM openjdk:11-slim
WORKDIR /app

# Kopiere die kompilierten Dateien aus dem Builder-Image
COPY --from=builder /app/hello.java .

# Führe die Java-Anwendung aus
CMD ["java", "hello.java"]