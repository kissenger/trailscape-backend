FROM node:14.2.0-buster

WORKDIR /app
COPY package.json .
RUN npm --verbose install

EXPOSE 3000
CMD [ "node", "server.mjs" ]

COPY . .
