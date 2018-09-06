cleos wallet unlock -n default --password PW5K7L99xZeJT8Gu8ww2jP1UGis3KgqkGk8WjSbmxmhk17w8P4Ljg

cleos -u http://eosiodev:8888 push action monstereosio battlejoin '[ "monsterusera", "monsterusere", "6d93e9e857796ca84cbab7aee00279d3f11c793e443c95451809c4c89e245273" ]' -p monsterusere


# picks for secret:
# "secret":"6d93e9e857796ca84cbab7aee00279d3f11c793e443c95451809c4c89e245273"}
cleos -u http://eosiodev:8888 push action monstereosio battlestart '{ "host": "monsterusera", "player": "monsterusere", "picks": {"pets": [5], "randoms": [85, 95, 160, 104, 65, 88, 248, 245, 155, 223, 89, 234, 40, 230, 153, 88, 39, 239, 200, 71, 67, 134, 233, 0, 144, 63, 216, 155, 164, 29, 28, 96]} }' -p monsterusere

cleos push action monstereosio battleattack '[ "monsterusera", "monsterusere", 5, 1, 0 ]' -p monsterusere


cleos -u http://eosiodev:8888 push action monstereosio battleleave '[ "monsterusera", "monsterusera" ]' -p monsterusera


cleos -u http://eosiodev:8888 push action monstereosio battlefinish '{ "host": "raul", "winner": "" }' -p monstereosio

eosiocpp -g pet.abi petabi.cpp
cleos set abi monstereosio pet.abi
eosiocpp -o pet.wast petcode.cpp
cleos set contract monstereosio ../pet
cleos -u http://eosiodev:8888 push action eosio.token transfer '["monsteruserb", "monstereosio", "1.0000 EOS", "MTT3"]' -p monsteruserb

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