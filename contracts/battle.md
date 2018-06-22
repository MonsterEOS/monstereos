```
cleos push action monstereosio createpet '[ "leordev", "Bubble" ]' -p leordev
cleos push action monstereosio createpet '[ "eosio", "Master" ]' -p eosio

cleos get table monstereosio monstereosio pets -l 5000

# id Bubble = 81, id Master = 82

cleos push action monstereosio battlecreate '[ "leordev", 1 ]' -p leordev

# test fail host
cleos push action monstereosio battlecreate '[ "leordev", 1 ]' -p leordev

cleos get table monstereosio monstereosio battles -l 5000

```
