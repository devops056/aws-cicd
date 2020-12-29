FROM node:12.2.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install global @nestjs/cli
RUN npm install

EXPOSE 8080

CMD ["npm", "run", "start"]
