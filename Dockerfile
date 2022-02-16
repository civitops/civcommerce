FROM node:14.17.6

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 5000
CMD [ "node", "server.js" ]
