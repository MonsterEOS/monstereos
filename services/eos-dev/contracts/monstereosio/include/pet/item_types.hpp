#include <pet/types.hpp>

using namespace eosio;
using namespace types;

namespace item_types {

// consumable items types
constexpr symbol CHEST                  = symbol("CHEST", 0);
constexpr symbol CHESG                  = symbol("CHESG", 0);
constexpr symbol CHESD                  = symbol("CHESD", 0);
constexpr symbol CANDY                  = symbol("CANDY", 0);
constexpr symbol ENERGY_DRINK           = symbol("ENGYD", 0);
constexpr symbol SMALL_HP_POTION        = symbol("SHPPT", 0);
constexpr symbol MEDIUM_HP_POTION       = symbol("MHPPT", 0);
constexpr symbol LARGE_HP_POTION        = symbol("LHPPT", 0);
constexpr symbol TOTAL_HP_POTION        = symbol("THPPT", 0);
constexpr symbol INCREASED_ATTACK_ORB   = symbol("IATOR", 0);
constexpr symbol SUPER_ATTACK_ORB       = symbol("SATOR", 0);
constexpr symbol INCREASED_DEFENSE_ORB  = symbol("IDFOR", 0);
constexpr symbol SUPER_DEFENSE_ORB      = symbol("SDFOR", 0);
constexpr symbol INCREASED_HP_ORB       = symbol("IHPOR", 0);
constexpr symbol SUPER_HP_ORB           = symbol("SHPOR", 0);
constexpr symbol BRONZE_XP_SCROLL       = symbol("BRXSC", 0);
constexpr symbol SILVER_XP_SCROLL       = symbol("SVXSC", 0);
constexpr symbol GOLD_XP_SCROLL         = symbol("GLXSC", 0);
constexpr symbol SUPER_BRONZE_XP_SCROLL = symbol("SBXSC", 0);
constexpr symbol SUPER_SILVER_XP_SCROLL = symbol("SSXSC", 0);
constexpr symbol SUPER_GOLD_XP_SCROLL   = symbol("SGXSC", 0);
constexpr symbol REVIVE_TOME            = symbol("REVIV", 0);

// equipment type
typedef uint8_t          equipment_type;
constexpr equipment_type EQUIP_ARMOR  = 10;
constexpr equipment_type EQUIP_WEAPON = 20;
constexpr equipment_type EQUIP_BOOTS  = 30;

// EQUIPMENTS
struct [[ eosio::table("equiptypes"), eosio::contract("monstereosio") ]] st_equiptypes {
  uuid     id;
  uint8_t  type;
  uint16_t attack;
  uint16_t defense;
  uint16_t hp;

  uint64_t primary_key() const { return id; }
};

struct [[ eosio::table("equipments"), eosio::contract("monstereosio") ]] st_equipments {
  uuid     id;
  name     owner;
  uint8_t  type;
  uint16_t item_id;
  uint16_t attack;
  uint16_t defense;
  uint16_t hp;
  uuid     equipped_pet;
  uint32_t claimed_at;

  uint64_t primary_key() const { return id; }
  uint64_t get_by_pet() const { return equipped_pet; }
};

typedef multi_index<"equiptypes"_n, st_equiptypes> _tb_equiptypes;
typedef multi_index<
    "equipments"_n, st_equipments,
    indexed_by<"bypet"_n, const_mem_fun<st_equipments, uint64_t, &st_equipments::get_by_pet>>>
    _tb_equipments;

} // namespace item_types