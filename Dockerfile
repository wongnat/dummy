FROM alpine:latest
RUN apk update
RUN apk add nodejs nodejs-npm

WORKDIR /app
ADD package.json /app/
ADD app.js /app/
RUN npm install

CMD []
ENTRYPOINT ["npm", "start"]
