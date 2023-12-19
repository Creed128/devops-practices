# Stage 1: Build
FROM node:14 as build
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Produktion
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

COPY --from=build /app .

EXPOSE 80
