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

    /* ****************************************** */
    /* ------------ Contract Actions ------------ */
    /* ****************************************** */

    void createpet(name owner,
                   string pet_name) {

        require_auth(owner);

        st_pet_config pc = _get_pet_config();

        print("creating pet");

        // creates the pet
        pets.emplace(_self, [&](auto &r) {
            st_pets pet{};
            pet.id = _next_id();
            pet.name = pet_name;
            pet.owner = owner;
            pet.created_at = now();
            pet.last_fed_at = pet.created_at;
            pet.last_play_at = pet.created_at;
            pet.last_bed_at = pet.created_at;
            pet.last_shower_at = pet.created_at;

            pet.type = (_hash_str(pet_name) + pet.created_at + pet.id + owner) % PET_TYPES;

            r = pet;
        });
    }

    void updatepet(uuid pet_id, uint32_t iteration) {
        require_auth(_self);
        print(pet_id, "|", iteration, ": updating pet ");

        auto itr_pet = pets.find(pet_id);
        eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
        st_pets pet = *itr_pet;

        _update(pet);

        pets.modify(itr_pet, 0, [&](auto &r) {
            r.health = pet.health;
            r.death_at = pet.death_at;
            r.hunger = pet.hunger;
            r.awake = pet.awake;
            r.happiness = pet.happiness;
            r.clean = pet.clean;
        });
    }

    void feedpet(uuid pet_id) {

        auto itr_pet = pets.find(pet_id);
        eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
        st_pets pet = *itr_pet;

        _update(pet);

        pets.modify(itr_pet, 0, [&](auto &r) {
            r.health = pet.health;
            r.death_at = pet.death_at;
            r.hunger = pet.hunger;
            r.awake = pet.awake;
            r.happiness = pet.happiness;
            r.clean = pet.clean;

            uint32_t current_time = now();
            bool can_eat = (current_time - pet.last_fed_at) > MIN_HUNGER_INTERVAL && r.is_sleeping == 0;

            bool is_alive = r.health > 0;

            if (can_eat && is_alive) {
                r.health = MAX_HEALTH;
                r.hunger = MAX_HUNGER_POINTS;
                r.last_fed_at = now();
            } else if (r.is_sleeping > 0) {
                print("I111|Zzzzzzzz...");
            } else if (!can_eat) {
                print("I110|Not hungry");
            } else if(!is_alive) {
                print("I199|Dead don't feed");
            }
        });
    }

    void bedpet(uuid pet_id) {
        auto itr_pet = pets.find(pet_id);
        eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
        st_pets pet = *itr_pet;

        require_auth(pet.owner);

        _update(pet);

        pets.modify(itr_pet, 0, [&](auto &r) {
            r.health = pet.health;
            r.death_at = pet.death_at;
            r.hunger = pet.hunger;
            r.awake = pet.awake;
            r.happiness = pet.happiness;
            r.clean = pet.clean;

            uint32_t current_time = now();
            bool can_sleep = (current_time - pet.last_awake_at) > MIN_AWAKE_INTERVAL && r.is_sleeping == 0;

            bool is_alive = r.health > 0;

            if (can_sleep && is_alive) {
                r.is_sleeping = 1;
                r.last_bed_at = now();
            } else if (!can_sleep) {
                print("I201|Not now sir!");
            } else if(!is_alive) {
                print("I299|Dead don't sleep");
            }
        });
    }

    void awakepet(uuid pet_id) {
        auto itr_pet = pets.find(pet_id);
        eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
        st_pets pet = *itr_pet;

        require_auth(pet.owner);

        _update(pet);

        pets.modify(itr_pet, 0, [&](auto &r) {
            r.health = pet.health;
            r.death_at = pet.death_at;
            r.hunger = pet.hunger;
            r.awake = pet.awake;
            r.happiness = pet.happiness;
            r.clean = pet.clean;

            uint32_t current_time = now();
            bool can_awake = (current_time - pet.last_bed_at) > MIN_SLEEP_PERIOD && r.is_sleeping == 1;

            bool is_alive = r.health > 0;

            if (can_awake && is_alive) {
                r.is_sleeping = 0;
                r.last_awake_at = now();
                r.awake = MAX_AWAKE_POINTS;
            } else if (!can_awake) {
                print("I301|Zzzzzzz");
            } else if(!is_alive) {
                print("I399|Dead don't awake");
            }
        });
    }

    void playpet(uuid pet_id) {
        print("play lazy developer");
    }

    void washpet(uuid pet_id) {
        print("wash lazy developer");
    }


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

    st_pet_config _get_pet_config(){
        st_pet_config pc;

        if (pet_config.exists()) {
            pc = pet_config.get();
        }  else {
            pc = st_pet_config{};
            pet_config.set(pc, _self);
        }

        return pc;
    }

    uuid _next_id(){
        st_pet_config pc = _get_pet_config();
        pc.last_id++;
        pet_config.set(pc, _self);
        return pc.last_id;
    }

    uint64_t _hash_str(const string &str) {
        return hash<string>{}(str);
    }

    void _update(st_pets &pet) {

        eosio_assert(pet.health > 0 && pet.death_at == 0, "E099|Pet is dead");

        uint32_t current_time = now();

        uint8_t effect_hp_hunger = _calc_hunger_hp(pet, current_time);

        int8_t hp = MAX_HEALTH - effect_hp_hunger;

        if (hp <= 0) {
            pet.health = 0;
            pet.death_at = current_time;
        } else {
            pet.health = hp;
        }
    }

    uint8_t _calc_hunger_hp(st_pets &pet, const uint32_t &current_time) {
        // how long it's hungry?
        uint32_t hungry_seconds = current_time - pet.last_fed_at;
        uint8_t hungry_points = (uint8_t) (hungry_seconds * MAX_HUNGER_POINTS / HUNGER_TO_ZERO);

        // calculates the effective hunger on hp, if pet hunger is 0
        uint8_t effect_hp_hunger = 0;
        if (hungry_points < MAX_HUNGER_POINTS) {
            pet.hunger = MAX_HUNGER_POINTS - hungry_points;
        } else {
            effect_hp_hunger = (uint8_t) ((hungry_points - MAX_HUNGER_POINTS) / HUNGER_HP_MODIFIER);
            pet.hunger = 0;
        }

        return effect_hp_hunger;
    }



};

EOSIO_ABI(pet, (createpet)(updatepet)(feedpet)(bedpet)(awakepet)(playpet)(washpet))
