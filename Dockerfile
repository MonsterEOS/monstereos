FROM keymetrics/pm2:8-alpine

ARG SERVICE

RUN apk add --no-cache git
RUN apk add --no-cache bash
RUN apk add --no-cache vim
RUN apk add --no-cache postgresql-client

RUN pm2 install typescript
RUN pm2 install ts-node

COPY ./docker /opt/application/docker
COPY ./services/$SERVICE/package.json /opt/application/node/package.json

WORKDIR /opt/application/node

RUN /opt/application/docker/install-all-local.sh

COPY ./services/$SERVICE /opt/application/node

EXPOSE 80

CMD ["pm2-dev", "start", "pm2.config.js"]
