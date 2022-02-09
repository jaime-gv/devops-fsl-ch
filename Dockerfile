FROM node:8.12-alpine
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