# Dockerfile
# Stage 1: Build
FROM node:latest as builder
WORKDIR /app

COPY package.json .
COPY package-lock.json .
RUN npm install

# Kopiere alle Dateien, nicht nur package.json
COPY . .

# Stage 2: Runtime
FROM node:latest
WORKDIR /app

# Kopiere nur die notwendigen Dateien aus dem Builder-Image
COPY --from=builder /app .

EXPOSE 3500
CMD ["npm", "start"]
