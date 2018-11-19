#include <pet/types.hpp>

using namespace eosio;
using namespace types;
using namespace pet_types;
using namespace effect_types;

namespace battle_types {
typedef uint8_t       battle_mode;
constexpr battle_mode V1 = 1;
constexpr battle_mode V2 = 2;
constexpr battle_mode V3 = 3;

constexpr uint8_t BATTLE_REQ_ENERGY = 8;

constexpr uint16_t XP_WON  = 799;
constexpr uint16_t XP_LOST = 449;

struct st_battle_effect {
  effect_type effect;
  uint8_t     turns;
  uint8_t     modifier;
};

struct st_pet_stat {
  uuid                     pet_id;
  uint8_t                  pet_type;
  name                     player;
  uint8_t                  level;
  skill_type               skill1;
  skill_type               skill2;
  skill_type               skill3;
  uint16_t                 hp;
  uint16_t                 atk;
  uint16_t                 def;
  vector<st_battle_effect> effects;
};

struct st_commit {
  name             player;
  capi_checksum256 commitment;
  vector<uint8_t>  randoms{};
};

struct st_pick {
  vector<uint64_t> pets;
  vector<uint8_t>  randoms;
};

struct st_battle_move {
  uuid         pet_id;
  uuid         target;
  element_type attack_element;
  skill_type   skill;
};

struct st_battle_item {
  symbol item;
  uuid   target;
};

struct [[ eosio::table("petinbattles"), eosio::contract("monstereosio") ]] st_pet_inbatt {
  uuid pet_id;

  uint64_t primary_key() const { return pet_id; }
};

struct [[ eosio::table("plsinbattles"), eosio::contract("monstereosio") ]] st_pls_inbatt {
  name player;

  auto primary_key() const { return player.value; }
};

struct [[ eosio::table("battles"), eosio::contract("monstereosio") ]] st_battle {
  name                host;
  battle_mode         mode; // 1: 1v1, 2: 2v2, 3: 3v3 :)
  uint32_t            started_at   = 0;
  uint32_t            last_move_at = 0;
  vector<st_commit>   commits{};
  vector<st_pet_stat> pets_stats{};

  auto     primary_key() const { return host.value; }
  uint64_t by_started_at() const { return started_at; }

  bool pet_exists(uuid & new_pet) {
    for (const auto& stat : pets_stats) {
      if (stat.pet_id == new_pet)
        return true;
    }

    return false;
  }

  bool const player_exists(name const& player) {
    for (const auto& commit : commits) {
      if (commit.player == player)
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

  void add_player(name const& player, capi_checksum256 const& commitment) {
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

  void add_pet(uuid const& pet_id, uint8_t const& pet_type, name const& player, uint8_t level,
               uint8_t skill1, uint8_t skill2, uint8_t skill3, uint8_t atk, uint8_t def, uint8_t hp,
               uint8_t atk_mod, uint8_t def_mod, uint8_t hp_mod) {

    uint16_t total_hp  = floor((100 + (level * 10)) * (hp_mod / 10) * (1 + (hp / 100)));
    uint16_t total_atk = floor(level * (atk_mod / 10) * (1 + (atk / 100)));
    uint16_t total_def = floor(level * (def_mod / 10) * (1 + (def / 100)));

    st_pet_stat pet_stat{pet_id, pet_type, player,   level,     skill1,
                         skill2, skill3,   total_hp, total_atk, total_def};
    pets_stats.emplace_back(pet_stat);
  }
};

typedef multi_index<"petinbattles"_n, st_pet_inbatt> _tb_pet_in_battle;
typedef multi_index<"plsinbattles"_n, st_pls_inbatt> _tb_player_in_battle;
typedef multi_index<
    "battles"_n, st_battle,
    indexed_by<"start"_n, const_mem_fun<st_battle, uint64_t, &st_battle::by_started_at>>>
    _tb_battle;

} // namespace battle_types