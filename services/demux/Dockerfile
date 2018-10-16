FROM keymetrics/pm2:8-alpine

RUN npm install pm2@3.1.2 -g

ARG SERVICE

RUN apk add --no-cache git
RUN apk add --no-cache bash
RUN apk add --no-cache vim
RUN apk add --no-cache postgresql-client

RUN pm2 install typescript
RUN pm2 install ts-node

COPY ./install-all-local.sh /opt/application/docker/install-all-local.sh
COPY ./package.json /opt/application/node/package.json

WORKDIR /opt/application/node

RUN /opt/application/docker/install-all-local.sh

COPY ./ /opt/application/node

EXPOSE 80

CMD ["pm2-dev", "start", "pm2.config.js"]
