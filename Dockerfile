
FROM node:14.17.5



WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

RUN npm test
RUN npm run compile

EXPOSE 3000

CMD [ "npm", "start" ]


