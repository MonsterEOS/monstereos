## deprecated, monster market is merged on monstereosio contract

# MARKET_ACCOUNT_PRIVATE_OWNER_KEY="5KXr9mnkJRtCKWrkrQFB5btBDGiCuxhEy3uxtDkGigFCJvkWv5Z"
# MARKET_ACCOUNT_PUBLIC_OWNER_KEY="EOS8ZJd4SW5gvRFZhtH3aiyCmpyZKCSGhcioTf26prdFXCXycUFC4"

# MARKET_ACCOUNT_PRIVATE_ACTIVE_KEY="5KJueLRwGbScG24utc3o1pu5kuVKkYHQC4Rgt3afGawZuFMbcfW"
# MARKET_ACCOUNT_PUBLIC_ACTIVE_KEY="EOS73HrJ8yoWRakoa2ykG8wdxsw5suBhUrqe9nEWo3Tuhcub9Es3r"


# ROOT_DIR="/opt/eosio/bin"
# CLEOS_PATH="$ROOT_DIR/cleos"
# SCRIPTS_DIR="/opt/application/scripts"
# CONFIG_DIR="/opt/application/config"
# CONTRACTS_DIR="/opt/application/contracts"

# # move into the executable directory
# cd $ROOT_DIR

# ./cleos wallet import -n default --private-key $MARKET_ACCOUNT_PRIVATE_OWNER_KEY
# ./cleos wallet import -n default --private-key $MARKET_ACCOUNT_PRIVATE_ACTIVE_KEY

# # Create the monstereosio account
# sleep 2s
# echo "Creating Monster market account"
# cleos -u http://eosiodev:8888 system newaccount eosio --transfer monstereosmt $MARKET_ACCOUNT_PUBLIC_OWNER_KEY $MARKET_ACCOUNT_PUBLIC_ACTIVE_KEY --stake-net "100000.0000 SYS" --stake-cpu "100000.0000 SYS" --buy-ram "100000.000 SYS"

# echo "Compiling monster market Contract"
# ./eosiocpp -o "$CONTRACTS_DIR"/market/market.wast "$CONTRACTS_DIR"/market/market.cpp

# echo "Deploying monsters market Contract"
# cleos -u http://eosiodev:8888 set contract monstereosmt "$CONTRACTS_DIR"/market

# cleos -u http://eosiodev:8888 set account permission monstereosmt active \
# '{"threshold": 1,
#   "keys": [{
#     "key": "'${MARKET_ACCOUNT_PUBLIC_ACTIVE_KEY}'",
#     "weight": 1
#   }],
#   "accounts": [{
#     "permission": {"actor": "monstereosmt",
#                    "permission": "eosio.code"},
#                    "weight": 1
#   }]}' owner -p monstereosmt

