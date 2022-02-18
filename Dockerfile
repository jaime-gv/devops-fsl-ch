FROM node:11.12.0-alpine
RUN apk update && apk add python make g++
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
RUN npm install
RUN npm install eslint -D
RUN set -x && \
    apk add --no-cache nodejs=${NODEJS_VERSION} nodejs-npm=${NODEJS_VERSION} && \
    npm install -g prettier@${PRETTIER_VERSION} && \
    npm cache clean --force && \
    apk del nodejs-npm
COPY . ./
EXPOSE 3000
CMD ["npm", "start"]