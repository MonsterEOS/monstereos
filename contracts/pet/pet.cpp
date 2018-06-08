#include "pet.hpp"

void pet::createpet(name owner,
                string pet_name) {

    require_auth(owner);

    // initialize config
    st_pet_config pc = _get_pet_config();

    // check balance
    _tb_balances balances(_self, owner);
    symbol_type eos{S(4,EOS)};
    auto itr_balance = balances.find(eos);
    eosio_assert(itr_balance != balances.end(), "Your wallet is empty");

    // calculate cost and save it, if have enough funds
    asset new_balance = itr_balance->funds - pc.creation_fee;
    eosio_assert(new_balance.amount >= 0, "You don't have enough funds to create a Monster!");
    balances.modify(itr_balance, owner, [&](auto& r){
        r.funds = new_balance;
    });


    print("creating pet");

    uuid new_id = _next_id();

    // creates the pet
    pets.emplace(_self, [&](auto &r) {
        st_pets pet{};
        pet.id = new_id;
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

    // first update in the next minute
    transaction update{};
    update.actions.emplace_back(
        permission_level{_self, N(active)},
        _self, N(updatepet),
        std::make_tuple(new_id, 1)
    );
    update.delay_sec = 60;
    update.send(new_id, _self);
}

void pet::updatepet(uuid pet_id, uint32_t iteration) {
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

    // recursive infinite update if not dead, each minute
    uint32_t new_iteration = iteration + 1;
    uint64_t new_trx_id = (pet_id << 32 | new_iteration);
    transaction update{};
    update.actions.emplace_back(
        permission_level{_self, N(active)},
        _self, N(updatepet),
        std::make_tuple(pet_id, new_iteration)
    );
    update.delay_sec = 60;
    update.send(new_trx_id, _self);
}

void pet::feedpet(uuid pet_id) {

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

void pet::bedpet(uuid pet_id) {
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

void pet::awakepet(uuid pet_id) {
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


// @abi action
void pet::playpet(uuid pet_id) {
    print("play lazy developer");
}

void pet::washpet(uuid pet_id) {
    print("wash lazy developer");
}

void pet::transfer(uint64_t sender, uint64_t receiver) {
    print("\n>>> sender >>>", sender, " - name: ", name{sender});
    print("\n>>> receiver >>>", receiver, " - name: ", name{receiver});

    // ??? Don't need to verify because we already did it in EOSIO_ABI_EX ???
    // eosio_assert(code == N(eosio.token), "I reject your non-eosio.token deposit");

    auto transfer_data = unpack_action_data<st_transfer>();
    if(transfer_data.from == _self || transfer_data.to != _self) {
        return;
    }

    print("\n>>> transfer data quantity >>> ", transfer_data.quantity);

    eosio_assert(transfer_data.quantity.symbol == string_to_symbol(4, "EOS"),
    "MonsterEOS only accepts EOS for deposits");
    eosio_assert(transfer_data.quantity.is_valid(), "Invalid token transfer");
    eosio_assert(transfer_data.quantity.amount > 0, "Quantity must be positive");

    _tb_balances balances(_self, transfer_data.from);
    asset new_balance;
    auto itr_balance = balances.find(transfer_data.quantity.symbol);
    if(itr_balance != balances.end()) {
        balances.modify(itr_balance, transfer_data.from, [&](auto& r){
            // Assumption: total currency issued by eosio.token will not overflow asset
            r.funds += transfer_data.quantity;
            new_balance = r.funds;
        });
    } else {
        balances.emplace(transfer_data.from, [&](auto& r){
            r.funds = transfer_data.quantity;
            new_balance = r.funds;
        });
    }

    print("\n", name{transfer_data.from}, " deposited:       ", transfer_data.quantity);
    print("\n", name{transfer_data.from}, " funds available: ", new_balance);
}

uint8_t pet::_calc_hunger_hp(st_pets &pet, const uint32_t &current_time) {
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

void pet::_update(st_pets &pet) {

    eosio_assert(pet.health > 0 && pet.death_at == 0, "E099|Pet is dead.");

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

uint64_t pet::_hash_str(const string &str) {
    return hash<string>{}(str);
}

uuid pet::_next_id(){
    st_pet_config pc = _get_pet_config();
    pc.last_id++;
    pet_config.set(pc, _self);
    return pc.last_id;
}

pet::st_pet_config pet::_get_pet_config(){
    st_pet_config pc;

    if (pet_config.exists()) {
        pc = pet_config.get();
    }  else {
        pc = st_pet_config{};
        pet_config.set(pc, _self);
    }

    return pc;
}

// we need to sacrifice abi generation for recipient listener
// keep alternating the comments between EOSIO_ABI (to generate ABI)
// and EOSIO_ABI_EX to generate the listener action
// https://eosio.stackexchange.com/q/421/54

// EOSIO_ABI(pet, (createpet)(updatepet)(feedpet)(bedpet)(awakepet)(playpet)(washpet)(transfer))

#define EOSIO_ABI_EX( TYPE, MEMBERS ) \
extern "C" { \
   void apply( uint64_t receiver, uint64_t code, uint64_t action ) { \
      if( action == N(onerror)) { \
         /* onerror is only valid if it is for the "eosio" code account and authorized by "eosio"'s "active permission */ \
         eosio_assert(code == N(eosio), "onerror action's are only valid from the \"eosio\" system account"); \
      } \
      auto self = receiver; \
      if( code == self || code == N(eosio.token) || action == N(onerror) ) { \
         TYPE thiscontract( self ); \
         switch( action ) { \
            EOSIO_API( TYPE, MEMBERS ) \
         } \
         /* does not allow destructor of thiscontract to run: eosio_exit(0); */ \
      } \
   } \
}

EOSIO_ABI_EX(pet, (createpet)(updatepet)(feedpet)(bedpet)(awakepet)(playpet)(washpet)(transfer))
