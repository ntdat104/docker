FROM node:12-slim
WORKDIR /app
ENV WELCOME_MESSAGE="Hello i am mus104"
COPY package.json ./
RUN npm install
COPY ./ ./
CMD [ "npm", "start" ]