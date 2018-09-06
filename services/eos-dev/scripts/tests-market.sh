# some testing

MONSTERS_USERA_ACCOUNT="monsterusera"

echo "make offer and remove it"
cleos -u http://eosiodev:8888 push action monstereosmt offerpet '[1, "", "1.0000 EOS"]' -p monsteruserb
cleos -u http://eosiodev:8888 get table monstereosmt monstereosmt offers -l 100
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 100

cleos -u http://eosiodev:8888 push action monstereosmt removeoffer '["monsterusera", 1]' -p monsterusera
cleos -u http://eosiodev:8888 get table monstereosmt monstereosmt offers -l 100

cleos -u http://eosiodev:8888 push action monstereosmt claimpet '["monsteruserb", 1, "monsterusera"]' -p monsterusera
cleos -u http://eosiodev:8888 push action eosio.token transfer '["monsteruserb", "monstereosio", "0.0003 EOS", "MTT123"]' -p monsteruserb

sleep .5

# offer pet and claim pet
echo "make offer and claim it and reverse it"
echo "monster 1 offered by monsterusera claimed by monsteruserb"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1
cleos -u http://eosiodev:8888 push action monstereosmt offerpet '[1, "monsteruserb"]' -p monsterusera
cleos -u http://eosiodev:8888 push action monstereosmt claimpet '["monsterusera", 1]' -p monsteruserb

echo "monster 1 belongs to monsteruserb"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1

echo "monster 1 offered by monsteruserb, claimed by monsterusera"
cleos -u http://eosiodev:8888 push action monstereosmt offerpet '[1, "monsterusera"]' -p monsteruserb
cleos -u http://eosiodev:8888 push action monstereosmt claimpet '["monsteruserb", 1]' -p monsterusera

echo "no offers left"
cleos -u http://eosiodev:8888 get table monstereosmt monstereosmt offers -l 1
echo "monster 1 back to monsterusera"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1

sleep .5
cleos -u http://eosiodev:8888 push action monstereosmt offerpet '[1, "monsteruserb", 0, 10000]' -p monsterusera
echo "one offers for monsteruserb"
cleos -u http://eosiodev:8888 get table monstereosmt monstereosmt offers -l 1

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
echo "no offers left"
cleos -u http://eosiodev:8888 get table monstereosmt monstereosmt offers -l 1

echo "and reverse"
cleos -u http://eosiodev:8888 push action monstereosmt offerpet '[1, "monsterusera", 0, 10000]' -p monsteruserb
cleos -u http://eosiodev:8888 push action eosio.token transfer '["monsterusera", "monstereosio", "1.0000 EOS", "MTT1"]' -p monsterusera

echo "monster 1 to monsterusera"
cleos -u http://eosiodev:8888 get table monstereosio monstereosio pets -l 1
