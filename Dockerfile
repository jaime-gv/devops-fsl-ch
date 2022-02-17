FROM node:11.12.0-alpine
RUN apk update && apk add python make g++
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
RUN npm install

COPY . ./
CMD ["npm", "start"]