
cleos -u http://eosiodev:8888 push action monstereosio battlejoin '[ "monsterusere", "monsterusera", "beb190f502969e6a7c35525ab14586af0af8cc425939129a2d7bc2a5b82130e8" ]' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battleleave '[ "monsterusera", "monsterusera" ]' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battlestart '[ "monsterusera", "monsterusera", "1eaba9a10a74c0118dd8e5cedb073db7d35f30ff380692444772ff6e1108db2b", "meos1535715000603;7;8;9;" ]' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battlestart '[ "monsterusera", "monsterusera", "1eaba9a10a74c0118dd8e5cedb073db7d35f30ff380692444772ff6e1108db2b", "meos1535715000603;7;8;9;" ]' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battlecreate '[ "monsterusera", 1, "1eaba9a10a74c0118dd8e5cedb073db7d35f30ff380692444772ff6e1108db2b" ]' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battlecreate '[ "monsterusera", 1, "1eaba9a10a74c0118dd8e5cedb073db7d35f30ff380692444772ff6e1108db2b" ]' -p monsterusera

# picks for secret: {"data":{"pets":[18],"randoms":[41,52,106,110,158,189,237,53,145,130,204,127,137,247,173,225,127,141,85,16,38,123,52,7,155,61,168,251,80,148,94,117]},"secret":"beb190f502969e6a7c35525ab14586af0af8cc425939129a2d7bc2a5b82130e8"}
cleos -u http://eosiodev:8888 push action monstereosio battlestart '{ "host": "monsterusere", "player": "monsterusera", "picks": {"pets": [21], "randoms": [123, 206, 183, 140, 173, 37, 151, 123, 169, 157, 125, 211, 191, 181, 138, 130, 89, 227, 61, 233, 5, 45, 58, 92, 127, 71, 75, 206, 107, 59, 216, 249]} }' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battlefinish '{ "host": "raul", "winner": "" }' -p monstereosio


cleos wallet unlock -n monstereosio --password PW5KVUvfffF13aEJw7u8aJm9ZvyGGVhvUSm1eNiWQZhZU39RoMyPw

eosiocpp -g pet.abi pet.cpp
cleos set abi monstereosio pet.abi
eosiocpp -o pet.wast pet.cpp && cleos set contract monstereosio ../pet

# new pick
# 101d989d304b1535715000603153571500060315357150006031535715000603
# => 101, 989, 304 and random number 1535715000603153571500060315357150006031535715000603

# hashing pick
echo -n '101d989d304b1535715000603153571500060315357150006031535715000622' | xxd -r -p | sha256sum -b | awk '{print $1}'

# hashed pick:
# 20e978fbef9c32800e9c377d277222fd434a198606665d45be838620165204e3