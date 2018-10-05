# some testing

MONSTERS_USERA_ACCOUNT="monsterusera"

# unlock wallet
cleos wallet unlock < ../config/keys/default_wallet_password.txt

echo "make offer and remove it"
cleos -u http://eosiodev:8888 push action monstereosio orderask '[1, "", "1.0000 EOS"]' -p monsterusera
cleos -u http://eosiodev:8888 get table monstereosio monstereosio orders -l 100
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 100

cleos -u http://eosiodev:8888 push action monstereosio removeask '["monsterusera", 1]' -p monsterusera
cleos -u http://eosiodev:8888 get table monstereosio monstereosio orders -l 100

sleep .5

# offer pet and claim pet
echo "make offer and claim it and reverse it"
echo "monster 1 offered by monsterusera claimed by monsteruserb"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1
cleos -u http://eosiodev:8888 push action monstereosio orderask '[1, "monsteruserb", "0.0000 EOS", 0]' -p monsterusera
cleos -u http://eosiodev:8888 push action monstereosio claimpet '["monsterusera", 1, "monsteruserb"]' -p monsteruserb

echo "monster 1 belongs to monsteruserb"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1

echo "monster 1 offered by monsteruserb, claimed by monsterusera"
cleos -u http://eosiodev:8888 push action monstereosio orderask '[1, "monsterusera", "0.0000 EOS", 0]' -p monsteruserb
cleos -u http://eosiodev:8888 push action monstereosio claimpet '["monsteruserb", 1, "monsterusera"]' -p monsterusera

echo "no orders left"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio orders -l 1
echo "monster 1 back to monsterusera"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1

sleep .5
cleos -u http://eosiodev:8888 push action monstereosio orderask '[1, "monsteruserb", "1.0000 EOS", 0]' -p monsterusera
echo "one offers for monsteruserb"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio orders -l 1

# add some money for buying monsters
cleos -u http://eosiodev:8888 transfer eosio monsterusera "1000.0000 EOS"
cleos -u http://eosiodev:8888 transfer eosio monsteruserb "1000.0000 EOS"
cleos -u http://eosiodev:8888 transfer eosio monsteruserc "1000.0000 EOS"
cleos -u http://eosiodev:8888 transfer eosio monsteruserd "1000.0000 EOS"
cleos -u http://eosiodev:8888 transfer eosio monsterusere "1000.0000 EOS"

sleep .5
cleos -u http://eosiodev:8888 push action eosio.token transfer '["monsteruserb", "monstereosio", "1.0000 EOS", "MTT0"]' -p monsteruserb
echo "monster 1 to monsteruserb"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1
echo "no orders left"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio orders -l 1

echo "and reverse"
cleos -u http://eosiodev:8888 push action monstereosio orderask '[1, "monsterusera", "1.0000 EOS", 0]' -p monsteruserb
cleos -u http://eosiodev:8888 push action eosio.token transfer '["monsterusera", "monstereosio", "1.0000 EOS", "MTT1"]' -p monsterusera

echo "monster 1 to monsterusera"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1
