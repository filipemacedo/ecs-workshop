FROM node:lts-alpine

WORKDIR /app

COPY ./package.json ./package.json

RUN apk update && apk add bash

RUN yarn install

COPY --chown=node:node . .

RUN yarn build

EXPOSE 3000

CMD node index.js