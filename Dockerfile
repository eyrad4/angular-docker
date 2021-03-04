FROM node:15.10.0-alpine3.10

WORKDIR /var/www/html

COPY package*.json ./

RUN npm install
RUN npm install -g @angular/cli@10.1.5

COPY . .
#COPY . /var/www/html/

EXPOSE 4200
