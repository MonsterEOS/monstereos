/**
 * Pet-Tamagotchi-Alike Smart Contract
 *
 * The idea is to copy the original tamagotchi to the chain :)
 *
 *
 * @author Leo Ribeiro
 */
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/crypto.h>
#include <eosiolib/transaction.hpp>
#include <eosiolib/singleton.hpp>
#include <math.h>
#include <vector>
#include "lib/types.hpp"

using namespace eosio;
using namespace types;
using std::string;
using std::hash;

/* ****************************************** */
/* ------------ Contract Definition --------- */
/* ****************************************** */

class pet : public eosio::contract {
public:
    pet(account_name self)
    :eosio::contract(self),
    pets(_self,_self),
    pet_config(_self,_self)
    {}

    _tb_pet pets;

    // pet interactions
    void awakepet     ( uuid pet_id );
    void bedpet       ( uuid pet_id );
    void feedpet      ( uuid pet_id );
    void updatepet    ( uuid pet_id );
    void createpet    ( name owner, string pet_name );
    void destroypet   ( uuid pet_id );
    void transfer     ( uint64_t sender, uint64_t receiver );

    // battle interface
    void battlecreate ( name host, battle_mode mode );
    void battlejoin   ( name host, name player, checksum256 secret );
    void battleleave  ( name host, name player );
    void battlestart  ( name host, name player, checksum256 source );
    void battleselpet ( name host, name player, uuid pet_id );
    void battleattack ( name host, name player, uuid pet_id, uuid pet_enemy_id, element_type element );

    // admin/config interactions
    void addelemttype ( st_element element );
    void changeelemtt ( uint8_t index, st_element element );
    void addpettype   ( st_pet_type type );
    void changepettyp ( uint8_t index, st_pet_type type );
    void changecrtol  ( uint32_t new_interval );

    private:

    /* ****************************************** */
    /* ------------ Contract Config Data -------- */
    /* ****************************************** */

    // @abi table petconfig i64
    struct st_pet_config {
        uuid     last_id = 0;
        asset    creation_fee = asset{0,S(4,EOS)};
        uint8_t  max_health = 100;
        uint32_t hunger_to_zero = 10 * HOUR;
        uint32_t min_hunger_interval = 3 * HOUR;
        uint8_t  max_hunger_points = 100;
        uint8_t  hunger_hp_modifier = 1;
        uint32_t min_awake_interval = 8 * HOUR;
        uint32_t min_sleep_period = 4 * HOUR;
        uint32_t creation_tolerance = 1 * HOUR;
        uint32_t monsters_to_activate_fee = 1000;
        vector<st_element> element_types = {};
        vector<st_pet_type> pet_types = {};
    };

    typedef singleton<N(petconfig), st_pet_config> pet_config_singleton;
    pet_config_singleton pet_config;

    /* ****************************************** */
    /* ------------ Private Functions ----------- */
    /* ****************************************** */

    st_pet_config _get_pet_config();

    uuid _next_id();

    uint64_t _hash_str(const string &str);

    void _update(st_pets &pet);

    uint32_t _calc_hunger_hp(const st_pet_config &pc,
                             const uint32_t &last_fed_at,
                             const uint32_t &current_time);

    bool _pet_name_exists(string pet_name);

    void _calc_turn_and_next(st_battle battle);

};
