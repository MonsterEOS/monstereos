#include <pet/pet.hpp>

#include "pet.admin.cpp"
#include "pet.battle.cpp"
#include "pet.market.cpp"
#include "pet.items.cpp"
#include <boost/lexical_cast.hpp>

using namespace utils;
using namespace types;

void pet::createpet(name owner,
                    string pet_name) {

    require_auth(owner);

    // trim name would be nice
    // eos issue https://github.com/EOSIO/eos/issues/4184
    // boost::algorithm::trim(pet_name);

    // validates pet naming
    eosio_assert(pet_name.length() >= 1, "name must have at least 1 character!");
    eosio_assert(pet_name.length() <= 20, "name cannot exceed 20 chars");
    eosio_assert(pet_name.length() > count_spaces(pet_name), "name cannot be composed of spaces only");
    // eosio_assert(!_pet_name_exists(pet_name), "duplicated pet name");

    // initialize config
    auto pc = _get_pet_config();

    // check last pet creation tolerance
    if (pc.creation_tolerance > 0) {

        auto owner_pets = pets.get_index<N(byowner)>();
        auto last_pet_itr = owner_pets.find(owner);

        uint32_t last_created_date = 0;

        for (; last_pet_itr != owner_pets.end(); last_pet_itr++) {
            auto pet = *last_pet_itr;
            if (pet.owner != owner) break;
            last_created_date = pet.created_at > last_created_date ?
                pet.created_at : last_created_date;
        }

        if (last_created_date > 0) {
            print("\nlast created pet at: ", last_created_date);
        }

        uint32_t last_creation_interval = now() - last_created_date;
        eosio_assert(last_creation_interval > pc.creation_tolerance, "You can't create another pet now");
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
        pet.experience = 0;
        pet.last_bed_at = pet.created_at;
        pet.last_awake_at = pet.created_at + pc.creation_awake;

        // we are considering only 105 monsters, the type 105 is
        // monstereos devilish icon
        pet.type = (pet.created_at + pet.id + owner + _random(100)) 
            % 105; 

        r = pet;
    });
}

void pet::destroypet(uuid pet_id) {

    const auto& pet = pets.get(pet_id, "Invalid pet, destroying action is unrecoverable");

    require_auth(pet.owner);

    uint8_t level = pet.get_level();
    string msg = "pet level is 231"; // + boost::lexical_cast<string, uint8_t>(level);
    print(msg);

    // pets.erase( pet );

    // primer roller
    _random(10);
}

void pet::transferpet(uuid pet_id, name new_owner) {

    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    auto pet = *itr_pet;

    eosio_assert(has_auth(_self) || has_auth(pet.owner),
        "missing required authority of contract or owner");

    // require_auth(pet.owner);

    pets.modify(itr_pet, 0, [&](auto &r) {
        r.owner = new_owner;
    });

    // primer roller
    _random(10);
}

void pet::feedpet(uuid pet_id) {

    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "Invalid pet");
    st_pets pet = *itr_pet;

    require_auth(pet.owner);

    auto pc = _get_pet_config();

    eosio_assert(_is_alive(pet, pc), "dead don't eat");
    eosio_assert(!pet.is_sleeping(), "zzzzzz");

    bool can_eat = (now() - pet.last_fed_at) > pc.min_hunger_interval;
    eosio_assert(can_eat, "not hungry");

    // check and consume candy
    auto itr_account = accounts2.find(pet.owner);
    eosio_assert(itr_account != accounts2.end(), "pet owner is not signed up");
    st_account2 account = *itr_account;
    auto player_candies = account.assets[CANDY];
    eosio_assert(player_candies >= 1, "player has no candy to feed");
    accounts2.modify(itr_account, 0, [&](auto &r) {
        r.assets[CANDY] = player_candies - 1;
    });

    pets.modify(itr_pet, pet.owner, [&](auto &r) {
        r.last_fed_at = now();
    });

    // primer roller
    _random(10);
}

void pet::bedpet(uuid pet_id) {
    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    // only owners can make pets sleep
    require_auth(pet.owner);

    auto pc = _get_pet_config();

    eosio_assert(_is_alive(pet, pc), "dead don't sleep");
    eosio_assert(!pet.is_sleeping(), "already sleeping");

    bool can_sleep = (now() - pet.last_awake_at) > pc.min_awake_interval;
    eosio_assert(can_sleep, "not now!");

    pets.modify(itr_pet, pet.owner, [&](auto &r) {
        r.last_bed_at = now();
    });

    // primer roller
    _random(10);
}

void pet::awakepet(uuid pet_id) {
    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    // only owners can wake up pets
    require_auth(pet.owner);

    auto pc = _get_pet_config();

    eosio_assert(_is_alive(pet, pc), "dead don't awake");
    eosio_assert(pet.is_sleeping(), "already awake");

    bool can_awake = (now() - pet.last_bed_at) > pc.min_sleep_period;
    eosio_assert(can_awake, "zzzzzz");

    pets.modify(itr_pet, pet.owner, [&](auto &r) {
        r.last_awake_at = now();
        r.energy_drinks = 0;
        r.energy_used = 0;
    });

    // primer roller
    _random(10);
}

void pet::claimskill(uuid pet_id, skill_type skill) {
    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "Invalid pet");
    st_pets pet = *itr_pet;

    // only owners can claim skill
    require_auth(pet.owner);

    uint8_t level = pet.get_level();
    
    bool novice_skill = skill >= 10 && skill < 20 && level >= 10 && pet.skill1 == 0;
    bool medium_skill = skill >= 20 && skill < 30 && level >= 50 && pet.skill2 == 0;
    bool advanced_skill = skill >= 30 && skill < 40 && level >= 90 && pet.skill3 == 0; 

    eosio_assert(novice_skill || medium_skill || advanced_skill, "no available skill to set");

    element_type element = ELEMENT_NEUTRAL;

    switch (skill) {
        case SKILL_WOOD_BASIC:
        case SKILL_WOOD_MEDIUM:
        case SKILL_WOOD_ADVANCED:
            element = ELEMENT_WOOD;
            break;
        case SKILL_EARTH_BASIC:
        case SKILL_EARTH_MEDIUM:
        case SKILL_EARTH_ADVANCED:
            element = ELEMENT_EARTH;
            break;
        case SKILL_WATER_BASIC:
        case SKILL_WATER_MEDIUM:
        case SKILL_WATER_ADVANCED:
            element = ELEMENT_WATER;
            break;
        case SKILL_FIRE_BASIC:
        case SKILL_FIRE_MEDIUM:
        case SKILL_FIRE_ADVANCED:
            element = ELEMENT_FIRE;
            break;
        case SKILL_METAL_BASIC:
        case SKILL_METAL_MEDIUM:
        case SKILL_METAL_ADVANCED:
            element = ELEMENT_METAL;
            break;
        case SKILL_ANIMAL_BASIC:
        case SKILL_ANIMAL_MEDIUM:
        case SKILL_ANIMAL_ADVANCED:
            element = ELEMENT_ANIMAL;
            break;
        case SKILL_POISON_BASIC:
        case SKILL_POISON_MEDIUM:
        case SKILL_POISON_ADVANCED:
            element = ELEMENT_POISON;
            break;
        case SKILL_UNDEAD_BASIC:
        case SKILL_UNDEAD_MEDIUM:
        case SKILL_UNDEAD_ADVANCED:
            element = ELEMENT_UNDEAD;
            break;
        case SKILL_LIGHTNING_BASIC:
        case SKILL_LIGHTNING_MEDIUM:
        case SKILL_LIGHTNING_ADVANCED:
            element = ELEMENT_LIGHTNING;
            break;
    } 

    eosio_assert(_is_element_valid(pet.type, element), "invalid element skill");

    pets.modify(itr_pet, pet.owner, [&](auto &r) {
        if (novice_skill) {
            r.skill1 = skill;
        } else if (medium_skill) {
            r.skill2 = skill;
        } else if (advanced_skill) {
            r.skill3 = skill;
        }
    });

    // primer roller
    _random(10);
}

void pet::signup(name user) {

    require_auth(user);
    
    auto itr_account = accounts2.find(user);
    eosio_assert(itr_account == accounts2.end(), "you have signed up already");

    // check user was an early donator :)
    _tb_accounts accounts(_self, user);
    asset new_balance = asset{0,S(4,EOS)};
    auto itr_balance = accounts.find(new_balance.symbol.name());
    
    // migrates from old account table
    // if (itr_balance != accounts.end()) {
    //     accounts2.emplace(user, [&](auto& r){
    //         r.balance = itr_balance->balance;
    //         r.owner = user;
    //     });
    //     accounts.erase(itr_balance);
    //     // donator_reward(user); TODO: implement here
    // } else {
        accounts2.emplace(user, [&](auto& r){
            // r.assets.emplace(new_balance.symbol, new_balance.amount);
            r.initialize_actions();
            r.initialize_assets();
            r.owner = user;
        });
    // }

    // primer roller
    _random(10);
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

    string memoprefix = "mtt";
    auto startsWithMTT = transfer_data.memo.rfind(memoprefix, 0);

    // Monster Market Transfer
    if (startsWithMTT == 0) {

        _handle_transf(transfer_data.memo, transfer_data.quantity, transfer_data.from);

    } else { // in-app transfer
        _tb_accounts accounts(_self, transfer_data.from);
        asset new_balance;
        auto itr_balance = accounts.find(transfer_data.quantity.symbol.name());
        if(itr_balance != accounts.end()) {
            accounts.modify(itr_balance, 0, [&](auto& r){
                // Assumption: total currency issued by eosio.token will not overflow asset
                r.balance += transfer_data.quantity;
                new_balance = r.balance;
            });
        }
    }

    // primer roller
    _random(10);
}

bool pet::_is_element_valid(const uint8_t &pet_type, const element_type &element_id) {
  const auto& attack_pet_types = pettypes.get(pet_type, "invalid pet type");
  for (const auto& pet_element : attack_pet_types.elements) {
    if (pet_element == element_id) {
      return true;
    }
  }

  return false;
}

uint32_t pet::_calc_hunger_hp(const uint8_t &max_hunger_points, const uint32_t &hunger_to_zero,
    const uint8_t &hunger_hp_modifier, const uint32_t &last_fed_at, const uint32_t &current_time) {
    // how long it's hungry?
    uint32_t hungry_seconds = current_time - last_fed_at;
    uint32_t hungry_points = hungry_seconds * max_hunger_points / hunger_to_zero;

    // calculates the effective hunger on hp, if pet hunger is 0
    uint32_t effect_hp_hunger = 0;
    if (hungry_points >= max_hunger_points) {
        effect_hp_hunger = (hungry_points - max_hunger_points) / hunger_hp_modifier;
    }

    return effect_hp_hunger;
}

bool pet::_is_alive(st_pets &pet, const st_pet_config2 &pc) {

    // auto pc = _get_pet_config();

    uint32_t current_time = now();

    uint32_t effect_hp_hunger = _calc_hunger_hp(pc.max_hunger_points,
        pc.hunger_to_zero, pc.hunger_hp_modifier,
        pet.last_fed_at, current_time);

    int32_t hp = pc.max_health - effect_hp_hunger;

    return hp > 0;
}

int pet::_random(const int num) {
  
  auto itr_seed = seed.begin();
  
  if (itr_seed == seed.end()) {
    itr_seed = seed.emplace( _self, [&]( auto& r ) { });
  }

  auto new_seed = (itr_seed->last + now()) % 65537;

  seed.modify( itr_seed, _self, [&]( auto& s ) {
    s.last = new_seed;
  });

  return new_seed % num;
}
