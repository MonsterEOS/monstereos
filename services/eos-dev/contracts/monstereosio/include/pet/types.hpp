#pragma once

#include <string>
#include <vector>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <math.h>

using std::vector;
using std::map;
using std::string;

using namespace eosio;

namespace types {
  typedef uint64_t uuid;
  typedef uint8_t  battle_mode;
  typedef uint8_t  element_type;

  constexpr uint32_t DAY = 86400;
  constexpr uint32_t HOUR = 3600;
  constexpr uint32_t MINUTE = 60;

  // battle modes
  constexpr battle_mode V1 = 1;
  constexpr battle_mode V2 = 2;
  constexpr battle_mode V3 = 3;

  // market order types
  typedef uint8_t order_type;
  order_type ORDER_TYPE_ASK = 1;
  order_type ORDER_TYPE_BID = 2;
  order_type ORDER_TYPE_ASK_RENT = 11;
  order_type ORDER_TYPE_BID_RENT = 12;
  order_type ORDER_TYPE_RENTING = 10;

  struct st_pet_stat {
    uuid    pet_id;
    uint8_t pet_type;
    name    player;
    uint8_t hp;
  };

  struct st_commit {
    name player;
    checksum256 commitment;
    vector<uint8_t> randoms{};
  };

  struct st_pick {
    vector<uint64_t> pets;
    vector<uint8_t> randoms;
  };

  struct st_transfer {
      account_name from;
      account_name to;
      asset        quantity;
      string       memo;
  };

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
      uint32_t last_fed_at;
      uint32_t last_bed_at;
      uint32_t last_awake_at = 0;
      uint32_t last_play_at;
      uint32_t last_shower_at;

      uint64_t primary_key() const { return id; }

      uint64_t get_pets_by_owner() const { return owner.value; }

      bool is_sleeping() const {
          return last_bed_at > last_awake_at;
      }

      bool has_energy(const uint8_t min_energy) const {
          uint32_t awake_seconds = now() - last_awake_at;
          uint32_t energy_bar = 100 - ((100 * awake_seconds) / DAY);

          return energy_bar > min_energy;
      }
  };

  typedef multi_index<N(pets), st_pets,
      indexed_by<N(byowner), const_mem_fun<st_pets, uint64_t, &st_pets::get_pets_by_owner>>
  > _tb_pet;

  struct st_seed {
    uint64_t pk = 1;
    uint32_t last = 1;

    uint64_t primary_key() const { return pk; }
  };
  typedef multi_index<N(seed), st_seed> _tb_seed;

  // @abi table petinbattles i64
  struct st_pet_inbatt {
    uuid     pet_id;

    uint64_t primary_key() const { return pet_id; }
  };
  typedef multi_index<N(petinbattles), st_pet_inbatt> _tb_pet_in_battle;

  // @abi table petinbattles i64
  struct st_pls_inbatt {
    name     player;

    auto primary_key() const { return player; }
  };
  typedef multi_index<N(plsinbattles), st_pls_inbatt> _tb_player_in_battle;

  // @abi table accounts i64
  struct st_account {
      asset    balance;
      uint64_t primary_key() const { return balance.symbol.name(); }
  };
  typedef multi_index<N(accounts), st_account> _tb_accounts;

  // @abi table accounts2 i64
  struct st_account2 {
      name                      owner;
      flat_map<symbol, int64_t> balances;

      uint64_t primary_key() const { return owner; }
  };
  typedef multi_index<N(accounts2), st_account2> _tb_accounts2;

  // @abi table elements i64
  struct st_elements {
      uint64_t id;
      vector<uint8_t> ratios = {};

      uint64_t primary_key() const { return id; }
  };
  typedef multi_index<N(elements), st_elements> _tb_elements;

  // @abi table pettypes i64
  struct st_pet_types {
      uint64_t id;
      vector<uint8_t> elements = {};

      uint64_t primary_key() const { return id; }
  };
  typedef multi_index<N(pettypes), st_pet_types> _tb_pet_types;

  // @abi table battles i64
  struct st_battle {
    name                host;
    battle_mode         mode; // 1: 1v1, 2: 2v2, 3: 3v3 :)
    uint32_t            started_at = 0;
    uint32_t            last_move_at = 0;
    vector<st_commit>   commits{};
    vector<st_pet_stat> pets_stats{};

    auto primary_key() const { return host; }
    uint64_t by_started_at() const { return started_at; }

    bool pet_exists(uuid& new_pet) {
      for (const auto& stat : pets_stats) {
        if(stat.pet_id == new_pet)
          return true;
      }

      return false;
    }

    bool const player_exists(name const& player) {
      for (const auto& commit : commits) {
        if(commit.player == player)
          return true;
      }

      return false;
    }

    void remove_player(name const& player) {
      // remove player commitments
      commits.erase(std::remove_if(commits.begin(), commits.end(),
        [&](auto& commit) { return commit.player == player; }),
        commits.end());

      // remove player pets
      pets_stats.erase(std::remove_if(pets_stats.begin(), pets_stats.end(),
        [&](auto& pet) { return pet.player == player; }),
        pets_stats.end());
    }

    void add_player(name const& player, checksum256 const& commitment) {
      st_commit commit{player, commitment};
      commits.emplace_back(commit);
    }

    void add_quick_player(name const& player) {
      st_commit commit{player};
      commits.emplace_back(commit);
    }

    void check_turn_and_rotate(name const& player, uint32_t const& tolerance) {
      st_commit& commit = commits[0];

      bool is_idle = (now() - last_move_at) > tolerance;

      eosio_assert(commit.player == player || is_idle, "its not your turn");

      // rotates only if it's the current player
      if (player == commit.player) {
        std::rotate(commits.begin(), commits.begin() + 1, commits.end());
      }
    }

    void add_pet(uuid const& pet_id, uint8_t const& pet_type, name const& player) {
      st_pet_stat pet_stat{pet_id, pet_type, player, 100};
      pets_stats.emplace_back(pet_stat);
    }
  };

  typedef multi_index<N(battles), st_battle,
  indexed_by< N(start), const_mem_fun<st_battle, uint64_t, &st_battle::by_started_at > >
  > _tb_battle;

  // @abi table orders i64
  struct st_orders {
      uuid            id;
      name            user;
      order_type      type;
      uuid            pet_id;
      name            new_owner;
      asset           value;
      uint32_t        placed_at;
      uint32_t        ends_at;
      uint32_t        transfer_ends_at;

      uint64_t primary_key() const { return id; }
      uint128_t get_by_user_and_pet() const { return utils::combine_ids(user, pet_id); }

      EOSLIB_SERIALIZE(st_orders, (id)(user)(type)(pet_id)(new_owner)(value)(placed_at)(ends_at)(transfer_ends_at))
  };

  typedef multi_index<N(orders), st_orders,
      indexed_by<N(by_user_and_pet), const_mem_fun<st_orders, uint128_t, &st_orders::get_by_user_and_pet>>
  > _tb_orders;
}
