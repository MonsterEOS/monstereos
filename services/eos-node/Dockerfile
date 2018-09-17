FROM eosio/eos:v1.1.0

COPY ./ /opt/eosio/bin
COPY ./config.ini /opt/eosio/bin/data-dir/config.ini

RUN apt-get update && apt-get install curl -y

WORKDIR /opt/eosio/bin