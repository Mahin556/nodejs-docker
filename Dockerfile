FROM ubuntu

WORKDIR /app

RUN apt-get update && \
    apt-get install -y curl gnupg && \
    apt-get upgrade -y && \
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs 

COPY package-lock.json package.json index.js .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "index.js"]



