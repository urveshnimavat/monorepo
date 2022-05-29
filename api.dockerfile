FROM node:slim as development

ENV NODE_ENV=development

WORKDIR /usr/src/

COPY *.json ./
COPY /packages/api/ ./packages/api/

RUN yarn

EXPOSE 8000

CMD ["npm", "run", "start:dev", "--prefix", "./packages/api"]