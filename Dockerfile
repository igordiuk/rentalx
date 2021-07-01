FROM node


WORKDIR /usr/app

COPY package.json ./

RUN npm install -g npm@7.18.1

RUN npm install

COPY . .

EXPOSE 3333

CMD ["npm", "run", "dev"]

#docker compose - orchestrador de containers