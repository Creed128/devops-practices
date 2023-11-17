# Stage 1: Build
FROM maven:latest as builder
LABEL maintainer="Credo Ngoukeng (credongoukeng@gmail.com)"

WORKDIR /app
COPY ./my-java-app .

# Build the application
RUN mvn clean package

# Stage 2: Runtime
FROM openjdk:latest

WORKDIR /app

# Copy the JAR file from the builder stage
COPY --from=builder /app/target/*.jar /app/app.jar

# Expose the port if your application uses a specific port
EXPOSE 8080

# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
