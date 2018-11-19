#include <pet/types.hpp>

using namespace eosio;
using namespace types;
using namespace item_types;

namespace account_types {

struct [[ eosio::table("accounts"), eosio::contract("monstereosio") ]] st_account {
  asset    balance;
  uint64_t primary_key() const { return balance.symbol.code().raw(); }
};
typedef multi_index<"accounts"_n, st_account> _tb_accounts;

struct [[ eosio::table("accounts2"), eosio::contract("monstereosio") ]] st_account2 {
  name                            owner;
  flat_map<symbol, int64_t>       assets;
  flat_map<uint8_t, uint32_t>     actions;
  flat_map<uint8_t, vector<uuid>> house; // future

  uint64_t primary_key() const { return owner.value; }

  void initialize_actions() { actions = {{OPEN_DAILY_CHEST, 0}}; }

  void initialize_assets() {
    assets = {{CHEST, 0},
              {CHESG, 0},
              {CHESD, 0},
              {CANDY, 0},
              {ENERGY_DRINK, 0},
              {SMALL_HP_POTION, 0},
              {MEDIUM_HP_POTION, 0},
              {LARGE_HP_POTION, 0},
              {TOTAL_HP_POTION, 0},
              {INCREASED_ATTACK_ORB, 0},
              {SUPER_ATTACK_ORB, 0},
              {INCREASED_DEFENSE_ORB, 0},
              {SUPER_DEFENSE_ORB, 0},
              {INCREASED_HP_ORB, 0},
              {SUPER_HP_ORB, 0},
              {BRONZE_XP_SCROLL, 0},
              {SILVER_XP_SCROLL, 0},
              {GOLD_XP_SCROLL, 0},
              {SUPER_BRONZE_XP_SCROLL, 0},
              {SUPER_SILVER_XP_SCROLL, 0},
              {SUPER_GOLD_XP_SCROLL, 0},
              {REVIVE_TOME, 0}};
  }

  void add_asset(symbol sym, int64_t amount) {
    auto balance = assets[sym];
    balance      = balance + amount;
    assets[sym]  = balance;
  }
};
typedef multi_index<"accounts2"_n, st_account2> _tb_accounts2;
} // namespace account_types