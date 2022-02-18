FROM node:11.12.0-alpine
RUN apk update && apk add python make g++
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
RUN npm install
RUN npm install eslint -D
RUN npm lint init
RUN npm install -g prettier
COPY . ./
EXPOSE 3000
CMD ["npm", "start"]