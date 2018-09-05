#!/usr/bin/env bash
EOSIO_PRIVATE_KEY="5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"
EOSIO_PUBLIC_KEY="EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV"

EOSIO_SYS_PUBKEY="EOS8VJybqtm41PMmXL1QUUDSfCrs9umYN4U1ZNa34JhPZ9mU5r2Cm"
EOSIO_SYS_PVTKEY="5JGxnezvp3N4V1NxBo8LPBvCrdR85bZqZUFvBZ8ACrbRC3ZWNYv"

MONSTERS_ACCOUNT_PRIVATE_OWNER_KEY="5J5t5MuUmMgNcrFWiXyeBZEsCfHvgYE7Lec4W2wCaV5SiSoEqQr"
MONSTERS_ACCOUNT_PUBLIC_OWNER_KEY="EOS6P62N6D14ShhUnM7taEQHLTMmS7ohCyfikwAi46U7AT6jmUHyM"

MONSTERS_ACCOUNT_PRIVATE_ACTIVE_KEY="5JhTPDSe9ugHomFnhMgAdzzE2HniuR8rG3SyzzqvQrgJNPC4685"
MONSTERS_ACCOUNT_PUBLIC_ACTIVE_KEY="EOS5X6m7mxcKRsKvHDyCVp1DE5YAy5dEsb5TwFqG4F2xRvRYAAdZx"

MONSTERS_USERA_ACCOUNT="monsterusera"
MONSTERS_USERA_PVTKEY="5K4MHQN7sPdEURaxzjCnbynUwkEKRJzs8zVUf24ofaFiZNK815J"
MONSTERS_USERA_PUBKEY="EOS5k6Jht1epqZ2mnRLFVDXDTosaTneR6xFhvenVLiFfz5Ue125dL"

MONSTERS_USERB_ACCOUNT="monsteruserb"
MONSTERS_USERB_PVTKEY="5JHCQDi7jsbnQnWdyxteRjT2DdNZHePiEG1DTaPQQDDP2X6aor6"
MONSTERS_USERB_PUBKEY="EOS6TVQ6EmphCWavUuYiZMmDNYMRgbb96wgqWDncjrkvFPcpokgdD"

MONSTERS_USERC_ACCOUNT="monsteruserc"
MONSTERS_USERC_PVTKEY="5JXCt633pzYaUysn7exDHeVXwhwMjX2L231b37CdsSb7y1uvDH7"
MONSTERS_USERC_PUBKEY="EOS7CB47VMLWp49QhajE3uTuHuf9qoSeR6scUHMKGCD6LXYufRUDc"

MONSTERS_USERD_ACCOUNT="monsteruserd"
MONSTERS_USERD_PVTKEY="5JdRgeRBriBDdxb3r76sLJaQmwGgXkMU8GReTAmy8xYppMSAAoZ"
MONSTERS_USERD_PUBKEY="EOS6Jv4RykLZQQopCBdBHSwaGoMyFxyaxFNXimqFPdEXNWqgWbG1a"

MONSTERS_USERE_ACCOUNT="monsterusere"
MONSTERS_USERE_PVTKEY="5Jdwjwto9wxy5ZNPnWSn965eb8ZtSrK1uRKUxhviLpr9gK79hmM"
MONSTERS_USERE_PUBKEY="EOS5VdFvRRTtVQAPUJZQCYvpBekYV4nc1cFe7og9aYPTBMXZ38Koy"

ROOT_DIR="/opt/eosio/bin"
CLEOS_PATH="$ROOT_DIR/cleos"
SCRIPTS_DIR="/opt/application/scripts"
CONFIG_DIR="/opt/application/config"
CONTRACTS_DIR="/opt/application/contracts"

# move into the executable directory
cd $ROOT_DIR

# ./nodeos --config-dir /opt/eosio/bin/config-dir --data-dir /root/.local/share -e & echo $! > ./nodeos.pid

# Only create contract if wallet doesn't exist
mkdir "$CONFIG_DIR"/keys

sleep 1s

until curl eosiodev:8888/v1/chain/get_info
do
    sleep 1s
done

# Sleep for 2 secs to allow time to 4 blocks to be
# created so we have blocks to reference when
# sending transactions
sleep 2s
echo "Creating accounts and deploying wallets"

# start wallet
wallet_password=$(./cleos wallet create | awk 'FNR > 3 { print $1 }' | tr -d '"')
echo $wallet_password >| "$CONFIG_DIR"/keys/default_wallet_password.txt

# import wallet keys
sleep 2s
./cleos wallet import -n default --private-key $EOSIO_PRIVATE_KEY
./cleos wallet import -n default --private-key $EOSIO_SYS_PVTKEY
./cleos wallet import -n default --private-key $MONSTERS_ACCOUNT_PRIVATE_OWNER_KEY
./cleos wallet import -n default --private-key $MONSTERS_ACCOUNT_PRIVATE_ACTIVE_KEY
./cleos wallet import -n default --private-key $MONSTERS_USERA_PVTKEY
./cleos wallet import -n default --private-key $MONSTERS_USERB_PVTKEY
./cleos wallet import -n default --private-key $MONSTERS_USERC_PVTKEY
./cleos wallet import -n default --private-key $MONSTERS_USERD_PVTKEY
./cleos wallet import -n default --private-key $MONSTERS_USERE_PVTKEY

# create system accounts
sleep .5
./cleos -u http://eosiodev:8888 create account eosio eosio.bpay $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos -u http://eosiodev:8888 create account eosio eosio.msig $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos  -u http://eosiodev:8888 create account eosio eosio.names $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos  -u http://eosiodev:8888 create account eosio eosio.ram $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos  -u http://eosiodev:8888 create account eosio eosio.ramfee $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos  -u http://eosiodev:8888 create account eosio eosio.saving $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos  -u http://eosiodev:8888 create account eosio eosio.stake $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos  -u http://eosiodev:8888 create account eosio eosio.token $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY
sleep .5
./cleos  -u http://eosiodev:8888 create account eosio eosio.vpay $EOSIO_SYS_PUBKEY $EOSIO_SYS_PUBKEY

# deploy system account contracts
sleep .5
./cleos -u http://eosiodev:8888 set contract eosio.token /contracts/eosio.token
sleep .5
./cleos -u http://eosiodev:8888 set contract eosio.msig /contracts/eosio.msig

# issue tokens
sleep .5
./cleos -u http://eosiodev:8888 push action eosio.token create '["eosio", "10000000000.0000 SYS"]' -p eosio.token
sleep .5
./cleos -u http://eosiodev:8888 push action eosio.token issue '["eosio", "100000000.0000 SYS", "memo"]' -p eosio
sleep .5
./cleos -u http://eosiodev:8888 push action eosio.token create '["eosio", "10000000000.0000 EOS"]' -p eosio.token
sleep .5
./cleos -u http://eosiodev:8888 push action eosio.token issue '["eosio", "100000000.0000 EOS", "memo"]' -p eosio

# deploy the system contract
sleep 2s
./cleos -u http://eosiodev:8888 set contract eosio /contracts/eosio.system

# Create the monstereosio account
sleep 2s
echo "Creating MonsterEOS account"
cleos -u http://eosiodev:8888 system newaccount eosio --transfer monstereosio $MONSTERS_ACCOUNT_PUBLIC_OWNER_KEY $MONSTERS_ACCOUNT_PUBLIC_ACTIVE_KEY --stake-net "100000.0000 SYS" --stake-cpu "100000.0000 SYS" --buy-ram "100000.000 SYS"
sleep .5
cleos -u http://eosiodev:8888 transfer eosio monstereosio "1000000.0000 SYS"
cleos -u http://eosiodev:8888 transfer eosio monstereosio "1000000.0000 EOS"

cleos set account permission monstereosio active \
'{"threshold": 1,
  "keys": [{
    "key": "'${MONSTERS_ACCOUNT_PUBLIC_ACTIVE_KEY}'",
    "weight": 1
  }],
  "accounts": [{
    "permission": {"actor": "monstereosio",
                   "permission": "eosio.code"},
                   "weight": 1
  }]}' owner -p monstereosio


echo "Compiling monsters Contract"
./eosiocpp -o "$CONTRACTS_DIR"/pet/pet.wast "$CONTRACTS_DIR"/pet/petcode.cpp
./eosiocpp -g "$CONTRACTS_DIR"/pet/pet.abi "$CONTRACTS_DIR"/pet/petabi.cpp

echo "Deploying Monsters Contract"
cleos -u http://eosiodev:8888 set contract monstereosio "$CONTRACTS_DIR"/pet

sleep .5
echo "Creating players"
cleos -u http://eosiodev:8888 system newaccount eosio --transfer $MONSTERS_USERA_ACCOUNT $MONSTERS_USERA_PUBKEY $MONSTERS_USERA_PUBKEY --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.000 SYS"
sleep .5
cleos -u http://eosiodev:8888 system newaccount eosio --transfer $MONSTERS_USERB_ACCOUNT $MONSTERS_USERB_PUBKEY $MONSTERS_USERB_PUBKEY --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.000 SYS"
sleep .5
cleos -u http://eosiodev:8888 system newaccount eosio --transfer $MONSTERS_USERC_ACCOUNT $MONSTERS_USERC_PUBKEY $MONSTERS_USERC_PUBKEY --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.000 SYS"
sleep .5
cleos -u http://eosiodev:8888 system newaccount eosio --transfer $MONSTERS_USERD_ACCOUNT $MONSTERS_USERD_PUBKEY $MONSTERS_USERD_PUBKEY --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.000 SYS"
sleep .5
cleos -u http://eosiodev:8888 system newaccount eosio --transfer $MONSTERS_USERE_ACCOUNT $MONSTERS_USERE_PUBKEY $MONSTERS_USERE_PUBKEY --stake-net "10.0000 SYS" --stake-cpu "10.0000 SYS" --buy-ram "10.000 SYS"

echo "Waiting for node boostraping to complete"
sleep 2s

echo "Initialization Complete"