/**
 * Pet-Tamagotchi-Alike Smart Contract
 *
 * The idea is to copy the original tamagotchi to the chain :)
 *
 *
 * @author Leo Ribeiro
 */
#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/transaction.hpp>
#include <eosiolib/singleton.hpp>

using namespace eosio;

using std::string;
using std::hash;

/* ****************************************** */
/* ------------ Types Declarations ---------- */
/* ****************************************** */

typedef uint64_t uuid;

const uint8_t PET_TYPES = 109;
const uint32_t DAY = 86400;
const uint32_t HOUR = 3600;
const uint8_t  MAX_HEALTH = 100;
const uint32_t HUNGER_TO_ZERO = 10 * HOUR;
const uint32_t MIN_HUNGER_INTERVAL = 3 * HOUR;
const uint8_t  MAX_HUNGER_POINTS = 100;
const uint8_t  HUNGER_HP_MODIFIER = 1;
const uint32_t HAPPINESS_TO_ZERO = 20 * HOUR;
const uint8_t  MAX_HAPPINESS_POINTS = 100;
const uint8_t  HAPPINESS_HP_MODIFIER = 2;
const uint32_t AWAKE_TO_ZERO = 20 * HOUR;
const uint32_t SLEEP_TO_ZERO = 8 * HOUR;
const uint32_t MIN_AWAKE_INTERVAL = 8 * HOUR;
const uint32_t MIN_SLEEP_PERIOD = 4 * HOUR;
const uint8_t  MAX_AWAKE_POINTS = 100;
const uint8_t  AWAKE_HP_MODIFIER = 2;
const uint32_t CLEAN_TO_ZERO = 24 * HOUR;
const uint8_t  MAX_CLEAN_POINTS = 100;
const uint8_t  CLEAN_HP_MODIFIER = 3;



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



    void washpet(uuid pet_id);
    void playpet(uuid pet_id);
    void awakepet(uuid pet_id);
    void bedpet(uuid pet_id);
    void feedpet(uuid pet_id);
    void updatepet(uuid pet_id, uint32_t iteration);
    void createpet(name owner, string pet_name);


    private:

    /* ****************************************** */
    /* ------------ Contract Tables ------------- */
    /* ****************************************** */

    // @abi table pets i64
    struct st_pets {
        uuid id;
        name owner;
        string name;
        uint8_t type;
        uint32_t created_at;
        uint32_t death_at = 0;
        uint8_t health = MAX_HEALTH;
        uint8_t hunger = MAX_HUNGER_POINTS;
        uint32_t last_fed_at;
        uint8_t awake = MAX_AWAKE_POINTS;
        uint32_t last_bed_at;
        uint32_t last_awake_at = 0;
        uint8_t is_sleeping = 1;
        uint8_t happiness = MAX_HAPPINESS_POINTS;
        uint32_t last_play_at;
        uint8_t clean = MAX_CLEAN_POINTS;
        uint32_t last_shower_at;

        uint64_t primary_key() const { return id; }
    };

    typedef multi_index<N(pets), st_pets> _tb_pet;
    _tb_pet pets;



    /* ****************************************** */
    /* ------------ Contract Config Data -------- */
    /* ****************************************** */

    struct st_pet_config {
        uuid last_id = 1000000000;
        asset creation_fee = asset{10000,S(4,EOS)};
    };

    typedef singleton<N(pet_config), st_pet_config> pet_config_singleton;
    pet_config_singleton pet_config;

    /* ****************************************** */
    /* ------------ Private Functions ----------- */
    /* ****************************************** */

    st_pet_config _get_pet_config();

    uuid _next_id();

    uint64_t _hash_str(const string &str);

    void _update(st_pets &pet);

    uint8_t _calc_hunger_hp(st_pets &pet, const uint32_t &current_time);



};

