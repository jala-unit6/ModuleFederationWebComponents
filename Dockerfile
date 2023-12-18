FROM node:14-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm ci
COPY . .

EXPOSE 4200
EXPOSE 4201
EXPOSE 4203 

CMD [ "npm", "start" ]