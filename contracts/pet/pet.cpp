#include "pet.hpp"

void pet::createpet(name owner,
                string pet_name) {

    require_auth(owner);

    // initialize config
    st_pet_config pc = _get_pet_config();

    auto owner_pets = pets.get_index<N(byowner)>();
    auto last_pet_itr = owner_pets.upper_bound(owner);
    auto& last_pet = *last_pet_itr;
    print("\nchecking owner pets");
    if (last_pet_itr != owner_pets.end()) {
        uint32_t last_creation_interval = now() - last_pet.created_at;
        print("\nlast created pet at ", last_pet.created_at);
        eosio_assert(last_creation_interval > pc.creation_tolerance, "You can't create another pet now");
    }

    // check balance in case fee is active
    if (pc.creation_fee.amount > 0) {
        _tb_accounts accounts(_self, owner);
        symbol_type eos{S(4,EOS)};
        auto itr_balance = accounts.find(eos);
        eosio_assert(itr_balance != accounts.end(), "Your wallet is empty");

        // calculate cost and save it, if have enough funds
        asset new_balance = itr_balance->balance - pc.creation_fee;
        eosio_assert(new_balance.amount >= 0, "You don't have enough funds to create a Monster!");
        accounts.modify(itr_balance, owner, [&](auto& r){
            r.balance = new_balance;
        });
    }

    uuid new_id = _next_id();

    // creates the pet
    pets.emplace(owner, [&](auto &r) {
        st_pets pet{};
        pet.id = new_id;
        pet.name = pet_name;
        pet.owner = owner;
        pet.created_at = now();
        pet.last_fed_at = pet.created_at;
        pet.last_play_at = pet.created_at;
        pet.last_bed_at = pet.created_at;
        pet.last_shower_at = pet.created_at;
        pet.last_awake_at = 0;

        pet.type = (_hash_str(pet_name) + pet.created_at + pet.id + owner) % PET_TYPES;

        r = pet;
    });
}

void pet::updatepet(uuid pet_id) {
    require_auth(_self);
    print(pet_id, "| updating pet ");

    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    _update(pet);

    pets.modify(itr_pet, 0, [&](auto &r) {
        r.death_at = pet.death_at;
    });
}

void pet::feedpet(uuid pet_id) {

    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    _update(pet);

    st_pet_config pc = _get_pet_config();

    pets.modify(itr_pet, 0, [&](auto &r) {
        r.death_at = pet.death_at;

        uint32_t current_time = now();

        bool can_eat = (current_time - pet.last_fed_at) > pc.min_hunger_interval &&
            !r.is_sleeping();

        if (can_eat && r.is_alive()) {
            r.last_fed_at = now();
        } else if (r.is_sleeping()) {
            print("I111|Zzzzzzzz...");
        } else if (!can_eat) {
            print("I110|Not hungry");
        } else if(!r.is_alive()) {
            print("I199|Dead don't feed");
        }
    });
}

void pet::bedpet(uuid pet_id) {
    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    // only owners can make pets sleep
    require_auth(pet.owner);

    _update(pet);

    st_pet_config pc = _get_pet_config();

    pets.modify(itr_pet, 0, [&](auto &r) {
        r.death_at = pet.death_at;

        uint32_t current_time = now();

        bool can_sleep = (current_time - pet.last_awake_at) > pc.min_awake_interval &&
            !r.is_sleeping();

        if (can_sleep && r.is_alive()) {
            r.last_bed_at = now();
        } else if (!can_sleep) {
            print("I201|Not now sir!");
        } else if(!r.is_alive()) {
            print("I299|Dead don't sleep");
        }
    });
}

void pet::awakepet(uuid pet_id) {
    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    // only owners can wake up pets
    require_auth(pet.owner);

    _update(pet);

    st_pet_config pc = _get_pet_config();

    pets.modify(itr_pet, 0, [&](auto &r) {
        r.death_at = pet.death_at;

        uint32_t current_time = now();
        bool can_awake = (current_time - pet.last_bed_at) > pc.min_sleep_period &&
            r.is_sleeping();

        if (can_awake && r.is_alive()) {
            r.last_awake_at = now();
        } else if (!can_awake) {
            print("I301|Zzzzzzz");
        } else if(!r.is_alive()) {
            print("I399|Dead don't awake");
        }
    });
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

    _tb_accounts accounts(_self, transfer_data.from);
    asset new_balance;
    auto itr_balance = accounts.find(transfer_data.quantity.symbol.name());
    if(itr_balance != accounts.end()) {
        accounts.modify(itr_balance, transfer_data.from, [&](auto& r){
            // Assumption: total currency issued by eosio.token will not overflow asset
            r.balance += transfer_data.quantity;
            new_balance = r.balance;
        });
    } else {
        accounts.emplace(transfer_data.from, [&](auto& r){
            r.balance = transfer_data.quantity;
            new_balance = r.balance;
        });
    }

    print("\n", name{transfer_data.from}, " deposited:       ", transfer_data.quantity);
    print("\n", name{transfer_data.from}, " funds available: ", new_balance);
}

uint32_t pet::_calc_hunger_hp(const st_pet_config &pc, const uint32_t &last_fed_at, const uint32_t &current_time) {
    // how long it's hungry?
    uint32_t hungry_seconds = current_time - last_fed_at;
    uint32_t hungry_points = hungry_seconds * pc.max_hunger_points / pc.hunger_to_zero;

    // calculates the effective hunger on hp, if pet hunger is 0
    uint32_t effect_hp_hunger = 0;
    if (hungry_points >= pc.max_hunger_points) {
        effect_hp_hunger = (hungry_points - pc.max_hunger_points) / pc.hunger_hp_modifier;
    }

    print("\npet hungry_points=", hungry_points);
    print("\npet hungry_seconds=", hungry_seconds);

    return effect_hp_hunger;
}

void pet::_update(st_pets &pet) {

    eosio_assert(pet.is_alive(), "E099|Pet is dead.");

    st_pet_config pc = _get_pet_config();

    uint32_t current_time = now();

    uint32_t effect_hp_hunger = _calc_hunger_hp(pc, pet.last_fed_at, current_time);

    int32_t hp = pc.max_health - effect_hp_hunger;

    print("\npet hp=", hp);
    print("\npet effect_hp_hunger=", effect_hp_hunger);

    if (hp <= 0) {
        pet.death_at = current_time;
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

// EOSIO_ABI(pet, (createpet)(updatepet)(feedpet)(bedpet)(awakepet)(transfer))

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

EOSIO_ABI_EX(pet, (createpet)(updatepet)(feedpet)(bedpet)(awakepet)(transfer))
