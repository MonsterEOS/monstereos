#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include "lib/types.hpp"
#include "../pet/lib/types.hpp"

using namespace eosio;
using namespace types;

/* ****************************************** */
/* ------------ Contract Definition --------- */
/* ****************************************** */

class market : public eosio::contract {
public:
    market(account_name self)
    :eosio::contract(self),
    offers(_self, _self),
    pets(N(monstereosio), N(monstereosio))
    {
    }

    _tb_offers offers;
    types::_tb_pet pets;

    void offerpet(uuid pet_id, name new_owner, asset amount, uint32_t until);
    void removeoffer(name owner, uuid pet_id);
    void claimpet(name old_owner, uuid pet_id, name claimer);
    void bidpet(uuid pet_id, name bidder, asset amount, uint32_t until);
    void removebid(name bidder, uuid pet_id);
};