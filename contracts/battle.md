```
echo "deploy bios and token..."
cleos set contract eosio ../../../eos-mainnet/build/contracts/eosio.bios -p eosio
cleos create account eosio eosio.token EOS8Be9m6RgEXHXR4tTYZyorm1fEkMLMTubTd2PJHDeYCH2Ufg3XN EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3
cleos set contract eosio.token ../../../eos-mainnet/build/contracts/eosio.token -p eosio.token
cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
sleep .5

cleos create account eosio monstereosio EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3 EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3
cleos set contract monstereosio ../pet
echo "add some elements"
# neutral type 0
cleos push action monstereosio addelemttype '{ "element": { "ratios": [{"type": 0, "ratio": 8}, {"type": 1, "ratio": 8}, {"type": 2, "ratio": 8}, {"type": 3, "ratio": 8}, {"type": 4, "ratio": 8}, {"type": 5, "ratio": 8}] } }' -p monstereosio
# wood type 1
cleos push action monstereosio addelemttype '{ "element": { "ratios": [{"type": 0, "ratio": 8}, {"type": 1, "ratio": 8}, {"type": 2, "ratio": 20}, {"type": 3, "ratio": 15}, {"type": 4, "ratio": 10}, {"type": 5, "ratio": 5}] } }' -p monstereosio
# earth type 2
cleos push action monstereosio addelemttype '{ "element": { "ratios": [{"type": 0, "ratio": 8}, {"type": 1, "ratio": 5}, {"type": 2, "ratio": 8}, {"type": 3, "ratio": 20}, {"type": 4, "ratio": 15}, {"type": 5, "ratio": 10}] } }' -p monstereosio
# water type 3
cleos push action monstereosio addelemttype '{ "element": { "ratios": [{"type": 0, "ratio": 8}, {"type": 1, "ratio": 10}, {"type": 2, "ratio": 5}, {"type": 3, "ratio": 8}, {"type": 4, "ratio": 20}, {"type": 5, "ratio": 15}] } }' -p monstereosio
# fire type 4
cleos push action monstereosio addelemttype '{ "element": { "ratios": [{"type": 0, "ratio": 8}, {"type": 1, "ratio": 15}, {"type": 2, "ratio": 10}, {"type": 3, "ratio": 5}, {"type": 4, "ratio": 8}, {"type": 5, "ratio": 20}] } }' -p monstereosio
# metal type 5
cleos push action monstereosio addelemttype '{ "element": { "ratios": [{"type": 0, "ratio": 8}, {"type": 1, "ratio": 20}, {"type": 2, "ratio": 15}, {"type": 3, "ratio": 10}, {"type": 4, "ratio": 5}, {"type": 5, "ratio": 8}] } }' -p monstereosio

# add some pets types
cleos push action monstereosio addpettype '{ "type": { "elements": [0]} }' -p monstereosio
cleos push action monstereosio addpettype '{ "type": { "elements": [0,4]} }' -p monstereosio
cleos push action monstereosio addpettype '{ "type": { "elements": [0,5]} }' -p monstereosio
cleos push action monstereosio addpettype '{ "type": { "elements": [0]} }' -p monstereosio
cleos push action monstereosio addpettype '{ "type": { "elements": [0,3]} }' -p monstereosio
cleos push action monstereosio addpettype '{ "type": { "elements": [0,4]} }' -p monstereosio

cleos create account eosio leordev EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3 EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3

cleos push action monstereosio createpet '[ "leordev", "Bubble" ]' -p leordev
cleos push action monstereosio createpet '[ "eosio", "Master" ]' -p eosio

cleos get table monstereosio monstereosio pets -l 5000

# id Bubble = 1, id Master = 2

echo "creating battle"
cleos push action monstereosio battlecreate '[ "leordev", 1 ]' -p leordev
cleos get table monstereosio monstereosio battles -l 5000

echo "joining battle"
cleos push action monstereosio battlejoin '[ "leordev", "leordev", "d533f24d6f28ddcef3f066474f7b8355383e485681ba8e793e037f5cf36e4883" ]' -p leordev
cleos push action monstereosio battlejoin '[ "leordev", "eosio", "50ed53fcdaf27f88d51ea4e835b1055efe779bb87e6cfdff47d28c88ffb27129" ]' -p eosio
cleos get table monstereosio monstereosio battles -l 5000

echo "starting battle"
cleos push action monstereosio battlestart '[ "leordev", "leordev", "28349b1d4bcdc9905e4ef9719019e55743c84efa0c5e9a0b077f0b54fcd84905aaa" ]' -p leordev
cleos push action monstereosio battlestart '[ "leordev", "eosio", "15fe76d25e124b08feb835f12e00a879bd15666a33786e64b655891fba7d6c12" ]' -p eosio
cleos get table monstereosio monstereosio battles -l 5000

echo "selecting pets" #check the turn order here because it may fail
cleos push action monstereosio battleselpet '[ "leordev", "leordev", 1 ]' -p leordev
cleos push action monstereosio battleselpet '[ "leordev", "eosio", 2 ]' -p eosio

```
