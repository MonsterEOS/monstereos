#include <pet/types.hpp>

using namespace eosio;
using namespace types;

namespace pet_types {

constexpr uint8_t MAX_DAILY_ENERGY_DRINKS = 10;
constexpr uint8_t MAX_ENERGY_POINTS       = 100;

typedef uint8_t        element_type;
constexpr element_type ELEMENT_NEUTRAL   = 0;
constexpr element_type ELEMENT_WOOD      = 1;
constexpr element_type ELEMENT_EARTH     = 2;
constexpr element_type ELEMENT_WATER     = 3;
constexpr element_type ELEMENT_FIRE      = 4;
constexpr element_type ELEMENT_METAL     = 5;
constexpr element_type ELEMENT_ANIMAL    = 6;
constexpr element_type ELEMENT_POISON    = 7;
constexpr element_type ELEMENT_UNDEAD    = 8;
constexpr element_type ELEMENT_LIGHTNING = 9;

struct [[ eosio::table("pets"), eosio::contract("monstereosio") ]] st_pets {
  uuid     id;
  name     owner;
  string   name;
  uint8_t  type;
  uint32_t created_at;
  uint8_t  energy_drinks = 0;
  uint8_t  skill1        = 0;
  uint8_t  skill2        = 0;
  uint8_t  skill3        = 0;
  uint32_t last_fed_at;
  uint32_t last_bed_at;
  uint32_t last_awake_at = 0;
  uint32_t experience    = 0;
  uint8_t  energy_used   = 0;
  uint8_t  field_a       = 0;
  uint8_t  field_b       = 0;
  uint8_t  field_c       = 0;

  uint64_t primary_key() const { return id; }

  uint64_t get_pets_by_owner() const { return owner.value; }

  bool is_sleeping() const { return last_bed_at > last_awake_at; }

  bool has_energy(const uint8_t min_energy) const {
    uint32_t awake_seconds = now() - last_awake_at;
    uint32_t energy_bar =
        MAX_ENERGY_POINTS - ((MAX_ENERGY_POINTS * awake_seconds) / DAY) - energy_used;

    return energy_bar >= min_energy;
  }

  uint8_t get_level() const {
    auto level = floor(sqrt(0.01 * experience));
    if (level == 0) {
      return 1;
    } else if (level > 100) {
      return 100;
    } else {
      return level;
    }
  }
};

struct [[ eosio::table("elements"), eosio::contract("monstereosio") ]] st_elements {
  uint64_t        id;
  vector<uint8_t> ratios = {};

  uint64_t primary_key() const { return id; }
};

struct [[ eosio::table("pettypes"), eosio::contract("monstereosio") ]] st_pet_types {
  uint64_t        id;
  vector<uint8_t> elements = {};

  uint64_t primary_key() const { return id; }
};

typedef multi_index<
    "pets"_n, st_pets,
    indexed_by<"byowner"_n, const_mem_fun<st_pets, uint64_t, &st_pets::get_pets_by_owner>>>
    _tb_pet;

typedef multi_index<"elements"_n, st_elements> _tb_elements;

typedef multi_index<"pettypes"_n, st_pet_types> _tb_pet_types;

} // namespace pet_types