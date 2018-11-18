#pragma once

#include <string>
#include <vector>
#include <boost/container/flat_map.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <math.h>

using std::vector;
using std::map;
using std::string;
using boost::container::flat_map;

using namespace eosio;

namespace types {
  typedef uint64_t uuid;
  typedef uint8_t  battle_mode;
  typedef uint8_t  element_type;

  constexpr uint32_t DAY = 86400;
  constexpr uint32_t HOUR = 3600;
  constexpr uint32_t MINUTE = 60;

  // consumable items types
  const symbol CHEST = symbol("CHEST", 0);
  const symbol CHES2 = symbol("CHES2", 0);
  const symbol CHES3 = symbol("CHES3", 0);
  const symbol CANDY = symbol("CANDY", 0);
  const symbol ENERGY_DRINK = symbol("ENGYD", 0);
  const symbol SMALL_HP_POTION = symbol("SHPPT", 0);
  const symbol MEDIUM_HP_POTION = symbol("MHPPT", 0);
  const symbol LARGE_HP_POTION = symbol("LHPPT", 0);
  const symbol TOTAL_HP_POTION = symbol("THPPT", 0);
  const symbol INCREASED_ATTACK_ELIXIR = symbol("IATEL", 0);
  const symbol SUPER_ATTACK_ELIXIR = symbol("SATEL", 0);
  const symbol INCREASED_DEFENSE_ELIXIR = symbol("IDFEL", 0);
  const symbol SUPER_DEFENSE_ELIXIR = symbol("SDFEL", 0);
  const symbol INCREASED_HP_ELIXIR = symbol("IHPEL", 0);
  const symbol SUPER_HP_ELIXIR = symbol("SHPEL", 0);
  const symbol BRONZE_XP_SCROLL = symbol("BRXSC", 0);
  const symbol SILVER_XP_SCROLL = symbol("SVXSC", 0);
  const symbol GOLD_XP_SCROLL = symbol("GLXSC", 0);
  const symbol SUPER_BRONZE_XP_SCROLL = symbol("SBXSC", 0);
  const symbol SUPER_SILVER_XP_SCROLL = symbol("SSXSC", 0);
  const symbol SUPER_GOLD_XP_SCROLL = symbol("SGXSC", 0);
  const symbol REVIVE_TOME = symbol("REVIV", 0);

  // players actions
  constexpr uint8_t OPEN_DAILY_CHEST = 1;

  // caps
  constexpr uint8_t MAX_DAILY_ENERGY_DRINKS = 10;
  constexpr uint8_t BATTLE_REQ_ENERGY = 8;
  constexpr uint8_t MAX_ENERGY_POINTS = 100;

  // battle modes
  constexpr battle_mode V1 = 1;
  constexpr battle_mode V2 = 2;
  constexpr battle_mode V3 = 3;

  // battle xp points
  constexpr uint16_t XP_WON = 799;
  constexpr uint16_t XP_LOST = 449;

  // element types
  constexpr element_type ELEMENT_NEUTRAL = 0;
  constexpr element_type ELEMENT_WOOD = 1;
  constexpr element_type ELEMENT_EARTH = 2;
  constexpr element_type ELEMENT_WATER = 3;
  constexpr element_type ELEMENT_FIRE = 4;
  constexpr element_type ELEMENT_METAL = 5;
  constexpr element_type ELEMENT_ANIMAL = 6;
  constexpr element_type ELEMENT_POISON = 7;
  constexpr element_type ELEMENT_UNDEAD = 8;
  constexpr element_type ELEMENT_LIGHTNING = 9;

  // equipment type
  typedef uint8_t  equipment_type;
  constexpr equipment_type EQUIP_ARMOR = 10;
  constexpr equipment_type EQUIP_WEAPON = 20;
  constexpr equipment_type EQUIP_BOOTS = 30;

  // battle skills
  typedef uint8_t skill_type;
  constexpr skill_type SKILL_NEUTRAL_BASIC = 10;
  constexpr skill_type SKILL_NEUTRAL_MEDIUM = 20;
  constexpr skill_type SKILL_NEUTRAL_ADVANCED = 30;
  constexpr skill_type SKILL_WOOD_BASIC = 11;
  constexpr skill_type SKILL_WOOD_MEDIUM = 21;
  constexpr skill_type SKILL_WOOD_ADVANCED = 31;
  constexpr skill_type SKILL_EARTH_BASIC = 12;
  constexpr skill_type SKILL_EARTH_MEDIUM = 22;
  constexpr skill_type SKILL_EARTH_ADVANCED = 32;
  constexpr skill_type SKILL_WATER_BASIC = 13;
  constexpr skill_type SKILL_WATER_MEDIUM = 23;
  constexpr skill_type SKILL_WATER_ADVANCED = 33;
  constexpr skill_type SKILL_FIRE_BASIC = 14;
  constexpr skill_type SKILL_FIRE_MEDIUM = 24;
  constexpr skill_type SKILL_FIRE_ADVANCED = 34;
  constexpr skill_type SKILL_METAL_BASIC = 15;
  constexpr skill_type SKILL_METAL_MEDIUM = 25;
  constexpr skill_type SKILL_METAL_ADVANCED = 35;
  constexpr skill_type SKILL_ANIMAL_BASIC = 16;
  constexpr skill_type SKILL_ANIMAL_MEDIUM = 26;
  constexpr skill_type SKILL_ANIMAL_ADVANCED = 36;
  constexpr skill_type SKILL_POISON_BASIC = 17;
  constexpr skill_type SKILL_POISON_MEDIUM = 27;
  constexpr skill_type SKILL_POISON_ADVANCED = 37;
  constexpr skill_type SKILL_UNDEAD_BASIC = 18;
  constexpr skill_type SKILL_UNDEAD_MEDIUM = 28;
  constexpr skill_type SKILL_UNDEAD_ADVANCED = 38;
  constexpr skill_type SKILL_LIGHTNING_BASIC = 19;
  constexpr skill_type SKILL_LIGHTNING_MEDIUM = 29;
  constexpr skill_type SKILL_LIGHTNING_ADVANCED = 39;

  typedef uint8_t effect_type;
  // battle effects
  constexpr effect_type EFFECT_SKNOV      = 11;
  constexpr effect_type EFFECT_SKMED      = 12;
  constexpr effect_type EFFECT_SKADV      = 13;
  constexpr effect_type EFFECT_PLUSHP     = 21;
  constexpr effect_type EFFECT_PLUSATK    = 22;
  constexpr effect_type EFFECT_PLUSDEF    = 23;
  constexpr effect_type EFFECT_IMMUNE     = 31;
  constexpr effect_type EFFECT_STUN       = 41;
  constexpr effect_type EFFECT_HEALOVT    = 51;
  constexpr effect_type EFFECT_DMGOVT     = 52;

  // potions/special effects
  constexpr effect_type EFFECT_IATEL      = 210;
  constexpr effect_type EFFECT_SATEL      = 211;
  constexpr effect_type EFFECT_IDFEL      = 220;
  constexpr effect_type EFFECT_SDFEL      = 221;
  constexpr effect_type EFFECT_IHPEL      = 230;
  constexpr effect_type EFFECT_SHPEL      = 231;
  constexpr effect_type EFFECT_BRXSC      = 240;
  constexpr effect_type EFFECT_SVXSC      = 241;
  constexpr effect_type EFFECT_GLXSC      = 242;
  constexpr effect_type EFFECT_SBXSC      = 243;
  constexpr effect_type EFFECT_SSXSC      = 244;
  constexpr effect_type EFFECT_SGXSC      = 245;

  // market order types
  typedef uint8_t order_type;
  constexpr order_type ORDER_TYPE_ASK = 1;
  constexpr order_type ORDER_TYPE_BID = 2;
  constexpr order_type ORDER_TYPE_ASK_RENT = 11;
  constexpr order_type ORDER_TYPE_BID_RENT = 12;
  constexpr order_type ORDER_TYPE_RENTING = 10;

  struct st_battle_effect {
    effect_type effect;
    uint8_t     turns;
    uint8_t     modifier;
  };

  struct st_temp_effect {
    effect_type effect;
    uint32_t    expires_at;
  };

  struct st_pet_stat {
    uuid            pet_id;
    uint8_t         pet_type;
    name            player;
    uint8_t         hp;
    uint8_t         level;
    skill_type      skill1;
    skill_type      skill2;
    skill_type      skill3;
    uint8_t         atk;
    uint8_t         def;
    vector<st_battle_effect> effects;
  };

  struct st_commit {
    name player;
    capi_checksum256 commitment;
    vector<uint8_t> randoms{};
  };

  struct st_pick {
    vector<uint64_t> pets;
    vector<uint8_t> randoms;
  };

  struct st_battle_move {
    uuid         pet_id;
    uuid         target;
    element_type attack_element;
    skill_type   skill;
  };

  struct st_transfer {
      name         from;
      name         to;
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
      uint8_t  energy_drinks = 0;
      uint8_t  skill1 = 0;
      uint8_t  skill2 = 0;
      uint8_t  skill3 = 0;
      uint32_t last_fed_at;
      uint32_t last_bed_at;
      uint32_t last_awake_at = 0;
      uint32_t experience = 0;
      uint8_t  energy_used = 0;
      uint8_t  field_a = 0;
      uint8_t  field_b = 0;
      uint8_t  field_c = 0;

      uint64_t primary_key() const { return id; }

      uint64_t get_pets_by_owner() const { return owner.value; }

      bool is_sleeping() const {
          return last_bed_at > last_awake_at;
      }

      bool has_energy(const uint8_t min_energy) const {
          uint32_t awake_seconds = now() - last_awake_at;
          uint32_t energy_bar = MAX_ENERGY_POINTS - ((MAX_ENERGY_POINTS * awake_seconds) / DAY) - energy_used;

          return energy_bar >= min_energy;
      }

      uint8_t get_level() const {
          auto level = floor(sqrt(0.01 * experience));
          return level = 0 ? 1 : level;
      }
  };

  typedef multi_index<"pets"_n, st_pets,
      indexed_by<"byowner"_n, const_mem_fun<st_pets, uint64_t, &st_pets::get_pets_by_owner>>
  > _tb_pet;

  struct st_seed {
    uint64_t pk = 1;
    uint32_t last = 1;

    uint64_t primary_key() const { return pk; }
  };
  typedef multi_index<"seed"_n, st_seed> _tb_seed;

  // @abi table petinbattles i64
  struct st_pet_inbatt {
    uuid     pet_id;

    uint64_t primary_key() const { return pet_id; }
  };
  typedef multi_index<"petinbattles"_n, st_pet_inbatt> _tb_pet_in_battle;

  // @abi table petinbattles i64
  struct st_pls_inbatt {
    name     player;

    auto primary_key() const { return player.value; }
  };
  typedef multi_index<"plsinbattles"_n, st_pls_inbatt> _tb_player_in_battle;

  // @abi table accounts i64
  struct st_account {
      asset    balance;
      uint64_t primary_key() const { return balance.symbol.code().raw(); }
  };
  typedef multi_index<"accounts"_n, st_account> _tb_accounts;

  // @abi table accounts2 i64
  struct st_account2 {
      name                            owner;
      flat_map<symbol, int64_t>       assets;
      flat_map<uint8_t, uint32_t>     actions;
      flat_map<uint8_t, vector<uuid>> house; // future

      uint64_t primary_key() const { return owner.value; }

      void initialize_actions() {
        actions = {
          { OPEN_DAILY_CHEST, 0 }
        };
      }

      void initialize_assets() {
        assets = {
          { CHEST, 0 },
          { CHES2, 0 },
          { CHES3, 0 },
          { CANDY, 0 },
          { ENERGY_DRINK, 0 },
          { SMALL_HP_POTION, 0 },
          { MEDIUM_HP_POTION, 0 },
          { LARGE_HP_POTION, 0 },
          { TOTAL_HP_POTION, 0 },
          { INCREASED_ATTACK_ELIXIR, 0 },
          { SUPER_ATTACK_ELIXIR, 0 },
          { INCREASED_DEFENSE_ELIXIR, 0 },
          { SUPER_DEFENSE_ELIXIR, 0 },
          { INCREASED_HP_ELIXIR, 0 },
          { SUPER_HP_ELIXIR, 0 },
          { BRONZE_XP_SCROLL, 0 },
          { SILVER_XP_SCROLL, 0 },
          { GOLD_XP_SCROLL, 0 },
          { SUPER_BRONZE_XP_SCROLL, 0 },
          { SUPER_SILVER_XP_SCROLL, 0 },
          { SUPER_GOLD_XP_SCROLL, 0 },
          { REVIVE_TOME, 0 }
        };
      }

      void add_asset(symbol sym, int64_t amount) {
        auto balance = assets[sym];
        balance = balance + amount;
        assets[sym] = balance;
      }
  };
  typedef multi_index<"accounts2"_n, st_account2> _tb_accounts2;

  // @abi table elements i64
  struct st_elements {
      uint64_t id;
      vector<uint8_t> ratios = {};

      uint64_t primary_key() const { return id; }
  };
  typedef multi_index<"elements"_n, st_elements> _tb_elements;

  // @abi table pettypes i64
  struct st_pet_types {
      uint64_t id;
      vector<uint8_t> elements = {};

      uint64_t primary_key() const { return id; }
  };
  typedef multi_index<"pettypes"_n, st_pet_types> _tb_pet_types;

  // @abi table battles i64
  struct st_battle {
    name                host;
    battle_mode         mode; // 1: 1v1, 2: 2v2, 3: 3v3 :)
    uint32_t            started_at = 0;
    uint32_t            last_move_at = 0;
    vector<st_commit>   commits{};
    vector<st_pet_stat> pets_stats{};

    auto primary_key() const { return host.value; }
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

    void add_pet(uuid const& pet_id, uint8_t const& pet_type, name const& player, uint8_t level, uint8_t skill1, uint8_t skill2, uint8_t skill3, uint8_t atk, uint8_t def, uint8_t hp) {
      st_pet_stat pet_stat{
        pet_id,
        pet_type,
        player,
        uint8_t(100 + hp),
        level,
        skill1,
        skill2,
        skill3,
        atk,
        def
      };
      pets_stats.emplace_back(pet_stat);
    }
  };

  typedef multi_index<"battles"_n, st_battle,
  indexed_by< "start"_n, const_mem_fun<st_battle, uint64_t, &st_battle::by_started_at > >
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
      uint128_t get_by_user_and_pet() const { return utils::combine_ids(user.value, pet_id); }

      EOSLIB_SERIALIZE(st_orders, (id)(user)(type)(pet_id)(new_owner)(value)(placed_at)(ends_at)(transfer_ends_at))
  };

  typedef multi_index<"orders"_n, st_orders,
      indexed_by<"byuserandpet"_n, const_mem_fun<st_orders, uint128_t, &st_orders::get_by_user_and_pet>>
  > _tb_orders;

  // EQUIPMENTS

  // @abi table equiptypes i64
  struct st_equiptypes {
    uuid      id;
    uint8_t   type;
    uint16_t  attack;
    uint16_t  defense;
    uint16_t  hp;

    uint64_t primary_key() const { return id; }
  };
  typedef multi_index<"equiptypes"_n, st_equiptypes> _tb_equiptypes;

  // @abi table equipments i64
  struct st_equipments {
    uuid      id;
    name      owner;
    uint8_t   type;
    uint16_t  item_id;
    uint16_t  attack;
    uint16_t  defense;
    uint16_t  hp;
    uuid      equipped_pet;
    uint32_t  claimed_at;

    uint64_t primary_key() const { return id; }
    uint64_t get_by_pet() const { return equipped_pet; }
  };
  typedef multi_index<"equipments"_n, st_equipments,
    indexed_by<"bypet"_n, const_mem_fun<st_equipments, uint64_t, &st_equipments::get_by_pet>>
  > _tb_equipments;

  // special pet effects
  // @abi table petstates i64
  struct st_peteffects {
    uuid pet_id;
    vector<st_temp_effect> effects;

    uint64_t primary_key() const { return pet_id; }
  };
  typedef multi_index<"peteffects"_n, st_peteffects> _tb_peteffects;
}
