# cleos wallet import -n default --private-key $EOSIO_PRIVATE_KEY
# cleos wallet import -n default --private-key $EOSIO_SYS_PVTKEY
# cleos wallet import -n default --private-key $MONSTERS_ACCOUNT_PRIVATE_OWNER_KEY
# cleos wallet import -n default --private-key $MONSTERS_ACCOUNT_PRIVATE_ACTIVE_KEY
# cleos wallet import -n default --private-key $MONSTERS_USERA_PVTKEY
# cleos wallet import -n default --private-key $MONSTERS_USERB_PVTKEY
# cleos wallet import -n default --private-key $MONSTERS_USERC_PVTKEY
# cleos wallet import -n default --private-key $MONSTERS_USERD_PVTKEY
# cleos wallet import -n default --private-key $MONSTERS_USERE_PVTKEY

# cleos push action monstereosio signup '["monsterusera"]' -p monsterusera
cleos get account monsteruserb
cleos push action monstereosio signup '["monsteruserb"]' -p monsteruserb
cleos get account monsteruserb

# assert already signed up
cleos push action monstereosio signup '["monsteruserb"]' -p monsteruserb

# open daily chest
cleos push action monstereosio openchest '["monsteruserb"]' -p monsteruserb
cleos push action monstereosio chestreward '["monsteruserb", 1, "test"]' -p monstereosio
cleos get account monsteruserb
cleos get table monstereosio monstereosio accounts2 -L monsteruserb -l 1