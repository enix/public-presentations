FROM node:8

EXPOSE 8000

ENV NPM_CONFIG_LOGLEVEL info
WORKDIR /home/node/app/

COPY reveal.js /home/node/app/
RUN npm install
RUN ln -s . reveal.js
COPY slides/ slides/

CMD npm start
