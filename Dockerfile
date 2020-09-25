FROM node

RUN mkdir /usr/src/app
WORKDIR /use/src/app

ENV PATH /use/src/app/node_moduels/.bin:$PATH

WORKDIR /usr/src/app

COPY package*.json /use/src/app

RUN npm install

COPY . /use/src/app

EXPOSE 4000
CMD [ "npm", "start"]
