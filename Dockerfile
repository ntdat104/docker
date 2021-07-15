FROM node:12-slim
WORKDIR /app
COPY ./ ./
COPY package.json ./
RUN npm install