# Stage 1: Build
FROM node AS builder
WORKDIR /app
COPY . .
RUN npm install

# Stage 2: Run
FROM node 
WORKDIR /app
COPY --from=builder /app .
CMD ["node", "app.js"]
