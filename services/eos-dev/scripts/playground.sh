cleos wallet unlock -n default --password PW5Hwhi3a5Rzvv8qCCjs3hzrZCd6igMvYPezhFpeTfUfyqJuScfHo
PW5K7L99xZeJT8Gu8ww2jP1UGis3KgqkGk8WjSbmxmhk17w8P4Ljg

cleos push action monstereosio techrevive '[1, "just testing revival"]' -p monstereosio

cleos -u http://eosiodev:8888 push action monstereosio battlejoin '[ "monsterusera", "monsterusere", "1342c65d924cd4839c776d6f7f7a7c575ad24cde49c347cb14ff359be52e9629" ]' -p monsterusere


# picks for secret:
# "secret":"1342c65d924cd4839c776d6f7f7a7c575ad24cde49c347cb14ff359be52e9629"}
cleos -u http://eosiodev:8888 push action monstereosio battlestart '{ "host": "monsterusera", "player": "monsterusere", "picks": {"pets": [14], "randoms": [169, 147, 130, 65, 251, 7, 209, 45, 56, 104, 151, 118, 32, 172, 43, 25, 95, 79, 190, 97, 66, 94, 192, 160, 4, 180, 1, 20, 94, 94, 187, 58]} }' -p monsterusere

cleos push action monstereosio battleattack '[ "monsterusera", "monsterusere", 14, 13, 0 ]' -p monsterusere


cleos -u http://eosiodev:8888 push action monstereosio battleleave '[ "monsterusera", "monsterusera" ]' -p monsterusera


cleos -u http://eosiodev:8888 push action monstereosio battlefinish '{ "host": "raul", "winner": "" }' -p monstereosio

eosiocpp -g pet.abi petabi.cpp
cleos set abi monstereosio pet.abi
eosiocpp -o pet.wast petcode.cpp
cleos set contract monstereosio ../pet

# new pick
# 101d989d304b1535715000603153571500060315357150006031535715000603
# => 101, 989, 304 and random number 1535715000603153571500060315357150006031535715000603

# hashing pick
echo -n '101d989d304b1535715000603153571500060315357150006031535715000622' | xxd -r -p | sha256sum -b | awk '{print $1}'

cleos get table monstereosio monstereosio battles
cleos -u http://eosiodev:8888 push action monstereosio migrate '["delete old arenas"]' -p monstereosio

# hashed pick:
# 20e978fbef9c32800e9c377d277222fd434a198606665d45be838620165204e3

#### market playing

eosiocpp -o market.wast market.cpp
eosiocpp -g market.abi market.cpp

cleos -u http://eosiodev:8888 set contract monstereosmt ../market
cleos -u http://eosiodev:8888 push action eosio.token transfer '["monsterusera", "monstereosio", "1.0000 EOS", "MTT3"]' -p monsterusera

# deploy configs
cleos -u http://localhost:8888 push action monstereosio changemktfee '[100, "Market fee of 1%"]' -p monstereosio
cleos -u http://localhost:8888 push action monstereosio changecreawk '[1, "Awake immediately after creation"]' -p monstereosio
cleos -u http://localhost:8888 push action monstereosio changehungtz '[129601, "Three days of hungerness"]' -p monstereosio