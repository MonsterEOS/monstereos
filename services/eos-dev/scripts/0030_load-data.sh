#!/usr/bin/env bash
cleos wallet unlock < ../config/keys/default_wallet_password.txt

# monsters creation
echo "\ncreating few monsters"
cleos -u http://eosiodev:8888 push action monstereosio createpet '[ "monsterusera", "Bubble" ]' -p monsterusera
cleos -u http://eosiodev:8888 push action monstereosio createpet '[ "monsteruserb", "Cachero" ]' -p monsteruserb
cleos -u http://eosiodev:8888 push action monstereosio createpet '[ "monsteruserc", "Smoked" ]' -p monsteruserc
cleos -u http://eosiodev:8888 push action monstereosio createpet '[ "monsteruserd", "EternalOblivion" ]' -p monsteruserd
cleos -u http://eosiodev:8888 push action monstereosio createpet '[ "monsterusere", "Pilatos" ]' -p monsterusere

# monsters stats
echo "\ngetting created monsters"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets
echo "\ngetting monstereosio settings"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio petconfig2
