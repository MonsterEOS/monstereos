deploy basic contracts and monstereosio contract

```

echo "deploy bios and token..."
cleos set contract eosio ../../../eos-mainnet/build/contracts/eosio.bios -p eosio
cleos create account eosio eosio.token EOS8Be9m6RgEXHXR4tTYZyorm1fEkMLMTubTd2PJHDeYCH2Ufg3XN EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3
cleos set contract eosio.token ../../../eos-mainnet/build/contracts/eosio.token -p eosio.token
cleos push action eosio.token create '[ "eosio", "1000000000.0000 EOS", 0, 0, 0]' -p eosio.token
cleos push action eosio.token issue '["eosio", "100.0000 EOS", "initial issue"]' -p eosio
sleep .5

cleos create account eosio monstereosio EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3 EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3
cleos set contract monstereosio ../pet

```

Add elements and pet types:

```
./load-elements.sh
./load-pet-types.sh
```

Create accounts and create pets:

```
cleos create account eosio leordev EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3 EOS4ywPbXJp1V9AKQpSVKkCCDhgLSj7vvGK5pdowY5zL5s7hJdGn3

cleos push action monstereosio createpet '[ "leordev", "Bubble" ]' -p leordev
cleos push action monstereosio createpet '[ "eosio", "Master" ]' -p eosio

cleos get table monstereosio monstereosio pets -l 5000

# id Bubble = 1, id Master = 2
```

Create, join & start start a battle:

```
echo "creating battle"
cleos push action monstereosio battlecreate '[ "leordev", 1 ]' -p leordev
cleos get table monstereosio monstereosio battles -l 5000


echo "joining battle"
HASH1=$(openssl rand 32 -hex)
SECR1=$(echo -n $HASH1 | xxd -r -p | sha256sum -b | awk '{print $1}')
echo "join 1 sec/hash"
echo $SECR1
echo $HASH1
cleos push action monstereosio battlejoin "[ \"leordev\", \"leordev\", \"$SECR1\" ]" -p leordev

HASH2=$(openssl rand 32 -hex)
SECR2=$(echo -n $HASH2 | xxd -r -p | sha256sum -b | awk '{print $1}')
echo "join 2 sec/hash"
echo $SECR2
echo $HASH2
cleos push action monstereosio battlejoin "[ \"leordev\", \"eosio\", \"$SECR2\" ]" -p eosio

cleos get table monstereosio monstereosio battles -l 5000

echo "starting battle"
cleos push action monstereosio battlestart "[ \"leordev\", \"leordev\", \"$HASH1\" ]" -p leordev
cleos push action monstereosio battlestart "[ \"leordev\", \"eosio\", \"$HASH2\" ]" -p eosio

cleos get table monstereosio monstereosio battles -l 5000
```

need to check the turn orders to select pets and start fight

```
echo "selecting pets"
cleos push action monstereosio battleselpet '[ "leordev", "leordev", 1 ]' -p leordev
cleos push action monstereosio battleselpet '[ "leordev", "eosio", 2 ]' -p eosio

cleos push action monstereosio battleattack '[ "leordev", "leordev", 1, 2, 0 ]' -p leordev
cleos push action monstereosio battleattack '[ "leordev", "eosio", 2, 1, 0 ]' -p eosio
```
