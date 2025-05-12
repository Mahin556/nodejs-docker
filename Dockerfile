FROM node:latest

WORKDIR /app

COPY package-lock.json package.json index.js .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "index.js"]



