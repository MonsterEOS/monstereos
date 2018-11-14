#!/bin/bash
function start_chain() {
    docker-compose up -d eosiodev
}

function build_chain() {
    docker-compose down -v

    docker-compose build eosiodev

    docker-compose up -d eosiodev

    docker-compose run eosiodev /bin/bash -c "\
        /opt/application/scripts/0000_init-chain.sh && \
        /opt/application/scripts/0010_load-elements.sh && \
        /opt/application/scripts/0020_load-pet-types.sh && \
        /opt/application/scripts/0025_load-equip-types.sh && \
        /opt/application/scripts/0030_load-data.sh"

}

echo "If you want to reset and clean the chain use --clean"
echo "================================================"
if [[ $* == *--clean ]]; then
    echo "Starting clean build of chain..."
    echo "IMPORTANT: This will clear all of your data, in all containers."
    read -p "Please confirm (y/n) " -n 1 -r
    echo
    if [[ "$REPLY" =~ ^[Yy]$ ]]; then
        build_chain
    fi
else
    echo "Starting monsters..."
    start_chain
fi
