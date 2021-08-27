
FROM node:14.17.5
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
COPY . .
RUN npm install
RUN npm run compile
RUN npm test
EXPOSE 3000
CMD [ "npm", "start" ]


