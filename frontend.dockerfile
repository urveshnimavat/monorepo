FROM node:slim as builder

WORKDIR /usr/src/

COPY *.json ./
COPY ./packages/frontend ./packages/frontend/

RUN yarn

EXPOSE 3000 

CMD ["npm", "run", "start", "--prefix", "./packages/frontend"]

