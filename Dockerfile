FROM node:11.12.0-alpine
RUN apk update && apk add python make g++
EXPOSE 8080
WORKDIR /app
COPY . .
RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ \
    && npm install \
    && apk del .gyp
CMD ["npm", "start"]