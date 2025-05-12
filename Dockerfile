FROM node:latest

WORKDIR /app

COPY package-lock.json package.json . 

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT ["node", "index.js"]



