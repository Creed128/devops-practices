# Stage 1: Build
FROM centos:8 as builder
LABEL maintainer="Credo Ngoukeng (credongoukeng@gmail.com)"
LABEL description="eine einfache Java-Anwendung"

WORKDIR /app
COPY /my-java-app/pom.xml .
COPY /my-java-app/ src

# RUN mvn package
# Install Maven
RUN yum install -y maven

# Stage 2: Runtime
FROM openjdk 

WORKDIR /app

COPY --from=builder /app/target/my-java-app.jar .

CMD ["java", "-jar", "my-java-app.jar"]
