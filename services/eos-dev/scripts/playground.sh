
cleos -u http://eosiodev:8888 push action monstereosio battlejoin '[ "monsterusera", "monsteruserb", "20e978fbef9c32800e9c377d277222fd434a198606665d45be838620165204e3" ]' -p monsteruserb

cleos -u http://eosiodev:8888 push action monstereosio battleleave '[ "monsterusera", "monsteruserb" ]' -p monsteruserb

cleos -u http://eosiodev:8888 push action monstereosio battlestart '[ "monsterusera", "monsterusera", "1eaba9a10a74c0118dd8e5cedb073db7d35f30ff380692444772ff6e1108db2b", "meos1535715000603;7;8;9;" ]' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battlestart '[ "monsterusera", "monsterusera", "1eaba9a10a74c0118dd8e5cedb073db7d35f30ff380692444772ff6e1108db2b", "meos1535715000603;7;8;9;" ]' -p monsterusera

cleos -u http://eosiodev:8888 push action monstereosio battlestart '[ "monsterusera", "monsteruserb", "101d989d304b1535715000603153571500060315357150006031535715000622", "meos1535715000603;7;8;9;" ]' -p monsteruserb

eosiocpp -g pet.abi pet.cpp
eosiocpp -o pet.wast pet.cpp && cleos set contract monstereosio ../pet

# new pick
# 101d989d304b1535715000603153571500060315357150006031535715000603
# => 101, 989, 304 and random number 1535715000603153571500060315357150006031535715000603

# hashing pick
echo -n '101d989d304b1535715000603153571500060315357150006031535715000622' | xxd -r -p | sha256sum -b | awk '{print $1}'

# hashed pick:
# 20e978fbef9c32800e9c377d277222fd434a198606665d45be838620165204e3