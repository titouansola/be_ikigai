FROM node:latest

ENV NODE_ENV=development
ENV PORT=3000
ENV DOCKERMODE=1

COPY      . /build
WORKDIR   /build

RUN       npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]