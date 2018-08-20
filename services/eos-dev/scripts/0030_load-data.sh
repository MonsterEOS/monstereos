# monsters creation
echo "\ncreating few monsters"
cleos push action monstereosio createpet '[ "monsterusera", "Bubble" ]' -p monsterusera
cleos push action monstereosio createpet '[ "monsteruserb", "Cachero" ]' -p monsteruserb
cleos push action monstereosio createpet '[ "monsteruserc", "Smoked" ]' -p monsteruserc
cleos push action monstereosio createpet '[ "monsteruserd", "EternalOblivion" ]' -p monsteruserd
cleos push action monstereosio createpet '[ "monsterusere", "Pilatos" ]' -p monsterusere

# monsters stats
echo "\ngetting created monsters"
cleos get table monstereosio monstereosio pets
echo "\ngetting monstereosio settings"
cleos get table monstereosio monstereosio petconfig2
