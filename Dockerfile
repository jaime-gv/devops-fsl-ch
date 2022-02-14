FROM node:16.14.0
WORKDIR /app
COPY package.json .
RUN npm update -g npm 
RUN npm config set python /path/to/executable/python2.7
RUN npm install --force
COPY . ./
EXPOSE 3000
CMD ["node", "start"]