FROM eosio/eos:v1.2.1

COPY ./ /opt/eosio/bin
COPY ./config.ini /opt/eosio/bin/data-dir/config.ini

RUN apt-get update && apt-get install curl -y

WORKDIR /opt/eosio/bin