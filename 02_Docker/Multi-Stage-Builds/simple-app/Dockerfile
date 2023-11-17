# Stage 1: Build
FROM ubuntu:22.04 as builder
LABEL maintainer="Credo (credongoukeng@gmail.com)"
WORKDIR /app
RUN echo "Hello, World!" > output.txt
# Stage 2: Runtime
FROM ubuntu:22.04
WORKDIR /app
COPY --from=builder /app/output.txt .
CMD cat output.txt
