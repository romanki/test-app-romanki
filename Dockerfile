FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "./src/app.js", "--bind 0.0.0.0:$PORT" ]
