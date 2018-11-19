#pragma once

#include <boost/container/flat_map.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>
#include <math.h>
#include <string>
#include <vector>

using boost::container::flat_map;
using std::map;
using std::string;
using std::vector;

using namespace eosio;

namespace types {

typedef uint64_t uuid;

constexpr uint32_t DAY    = 86400;
constexpr uint32_t HOUR   = 3600;
constexpr uint32_t MINUTE = 60;

// players actions
constexpr uint8_t OPEN_DAILY_CHEST = 1;

struct [[ eosio::table("seed"), eosio::contract("monstereosio") ]] st_seed {
  uint64_t pk   = 1;
  uint32_t last = 1;

  uint64_t primary_key() const { return pk; }
};
typedef multi_index<"seed"_n, st_seed> _tb_seed;

struct [[ eosio::table("petconfig2"), eosio::contract("monstereosio") ]] st_pet_config2 {
  uuid     last_id               = 0;
  int64_t  creation_awake        = 1;
  uint64_t market_fee            = 100;
  uint8_t  max_health            = 100;
  uint32_t hunger_to_zero        = 36 * HOUR; // 129600
  uint32_t min_hunger_interval   = 3 * HOUR;
  uint8_t  max_hunger_points     = 100;
  uint8_t  hunger_hp_modifier    = 1;
  uint32_t min_awake_interval    = 8 * HOUR;
  uint32_t min_sleep_period      = 4 * HOUR;
  uint32_t creation_tolerance    = 1 * HOUR;
  uint32_t battle_idle_tolerance = 60;
  uint8_t  attack_min_factor     = 20;
  uint8_t  attack_max_factor     = 28;
  uint16_t battle_max_arenas     = 10;
  uint16_t battle_busy_arenas    = 0;
  uint16_t last_element_id       = 0;
  uint16_t last_pet_type_id      = 0;
};

typedef singleton<"petconfig2"_n, st_pet_config2> pet_config2_singleton;

} // namespace types
