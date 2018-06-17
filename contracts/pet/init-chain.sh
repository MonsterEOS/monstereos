# Script to init local chain

if [[ $# -lt 2 ]]; then
        echo "Usage: ./init-chain.sh <EOS_BUILD_PATH> <EOS_KEY>"
        exit 1
fi

# setup params
EOS_BUILD_PATH=$1
EOS_KEY=$2

# initial chain contracts
echo "\nBooting Chain Contracts"
cleos set contract eosio ${EOS_BUILD_PATH}/contracts/eosio.bios -p eosio
cleos create account eosio eosio.token ${EOS_KEY} ${EOS_KEY}
cleos set contract eosio.token ${EOS_BUILD_PATH}/contracts/eosio.token -p eosio.token
cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token

# karma account
echo "\nCreating MonsterEOS Account"
cleos create account eosio monstereosio ${EOS_KEY} ${EOS_KEY}
cleos push action eosio.token issue '[ "monstereosio", "1000.0000 EOS", "initial" ]' -p eosio

# contract deployment
echo "\nDeploying MonsterEOS Contract..."
eosiocpp -o pet.wast pet.cpp
eosiocpp -g pet.abi pet.cpp
cleos set contract monstereosio ../pet

# tests users accounts
echo "\nCreating a few EOS Accounts"
cleos create account eosio leordev ${EOS_KEY} ${EOS_KEY}
cleos push action eosio.token issue '[ "leordev", "10.0000 EOS", "initial" ]' -p eosio
cleos create account eosio tbfleming ${EOS_KEY} ${EOS_KEY}
cleos push action eosio.token issue '[ "tbfleming", "10.0000 EOS", "initial" ]' -p eosio
cleos create account eosio velua ${EOS_KEY} ${EOS_KEY}
cleos push action eosio.token issue '[ "velua", "10.0000 EOS", "initial" ]' -p eosio
cleos create account eosio friedger ${EOS_KEY} ${EOS_KEY}
cleos push action eosio.token issue '[ "friedger", "10.0000 EOS", "initial" ]' -p eosio

# depositting in monstereosio account


# monsters creation
echo "\ncreating KARMA Categories"
cleos push action karmaappioio createcat '[ "Mankind" ]' -p karmaappioio
cleos push action karmaappioio createcat '[ "Homeless" ]' -p karmaappioio
cleos push action karmaappioio createcat '[ "Animals" ]' -p karmaappioio
cleos push action karmaappioio createcat '[ "Kids" ]' -p karmaappioio
cleos push action karmaappioio createcat '[ "Technologi" ]' -p karmaappioio
cleos push action karmaappioio createcat '[ "Environment" ]' -p karmaappioio
cleos push action karmaappioio createcat '[ "Health" ]' -p karmaappioio

# monsters stats
echo "\ngetting leordev balance"
cleos get currency balance monstereosio leordev EOS
echo "\ngetting created monsters"
cleos get table monstereosio monstereosio pets
