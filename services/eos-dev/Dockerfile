FROM eosio/eos-dev:v1.0.5

COPY ./ /opt/eosio/bin

RUN apt-get update && apt-get install curl -y

RUN ["cp", "-r", "/contracts", "/opt/eosio/bin/config-dir"]

RUN echo "Initializing Chain Data, Contracts and Accounts"
RUN /bin/bash /opt/eosio/bin/init_chain.sh

WORKDIR /opt/eosio/bin
