#include <pet/types.hpp>

using namespace eosio;
using namespace types;

namespace effect_types {
// battle skills
typedef uint8_t      skill_type;
constexpr skill_type SKILL_NEUTRAL_BASIC      = 10;
constexpr skill_type SKILL_NEUTRAL_MEDIUM     = 20;
constexpr skill_type SKILL_NEUTRAL_ADVANCED   = 30;
constexpr skill_type SKILL_WOOD_BASIC         = 11;
constexpr skill_type SKILL_WOOD_MEDIUM        = 21;
constexpr skill_type SKILL_WOOD_ADVANCED      = 31;
constexpr skill_type SKILL_EARTH_BASIC        = 12;
constexpr skill_type SKILL_EARTH_MEDIUM       = 22;
constexpr skill_type SKILL_EARTH_ADVANCED     = 32;
constexpr skill_type SKILL_WATER_BASIC        = 13;
constexpr skill_type SKILL_WATER_MEDIUM       = 23;
constexpr skill_type SKILL_WATER_ADVANCED     = 33;
constexpr skill_type SKILL_FIRE_BASIC         = 14;
constexpr skill_type SKILL_FIRE_MEDIUM        = 24;
constexpr skill_type SKILL_FIRE_ADVANCED      = 34;
constexpr skill_type SKILL_METAL_BASIC        = 15;
constexpr skill_type SKILL_METAL_MEDIUM       = 25;
constexpr skill_type SKILL_METAL_ADVANCED     = 35;
constexpr skill_type SKILL_ANIMAL_BASIC       = 16;
constexpr skill_type SKILL_ANIMAL_MEDIUM      = 26;
constexpr skill_type SKILL_ANIMAL_ADVANCED    = 36;
constexpr skill_type SKILL_POISON_BASIC       = 17;
constexpr skill_type SKILL_POISON_MEDIUM      = 27;
constexpr skill_type SKILL_POISON_ADVANCED    = 37;
constexpr skill_type SKILL_UNDEAD_BASIC       = 18;
constexpr skill_type SKILL_UNDEAD_MEDIUM      = 28;
constexpr skill_type SKILL_UNDEAD_ADVANCED    = 38;
constexpr skill_type SKILL_LIGHTNING_BASIC    = 19;
constexpr skill_type SKILL_LIGHTNING_MEDIUM   = 29;
constexpr skill_type SKILL_LIGHTNING_ADVANCED = 39;

// battle effects
typedef uint8_t       effect_type;
constexpr effect_type EFFECT_SKNOV   = 11;
constexpr effect_type EFFECT_SKMED   = 12;
constexpr effect_type EFFECT_SKADV   = 13;
constexpr effect_type EFFECT_PLUSHP  = 21;
constexpr effect_type EFFECT_PLUSATK = 22;
constexpr effect_type EFFECT_PLUSDEF = 23;
constexpr effect_type EFFECT_IMMUNE  = 31;
constexpr effect_type EFFECT_STUN    = 41;
constexpr effect_type EFFECT_HEALOVT = 51;
constexpr effect_type EFFECT_DMGOVT  = 52;

// potions/special effects
constexpr effect_type EFFECT_IATOR = 210;
constexpr effect_type EFFECT_SATOR = 211;
constexpr effect_type EFFECT_IDFOR = 220;
constexpr effect_type EFFECT_SDFOR = 221;
constexpr effect_type EFFECT_IHPOR = 230;
constexpr effect_type EFFECT_SHPOR = 231;
constexpr effect_type EFFECT_BRXSC = 240;
constexpr effect_type EFFECT_SVXSC = 241;
constexpr effect_type EFFECT_GLXSC = 242;
constexpr effect_type EFFECT_SBXSC = 243;
constexpr effect_type EFFECT_SSXSC = 244;
constexpr effect_type EFFECT_SGXSC = 245;

struct st_temp_effect {
  effect_type effect;
  uint32_t    expires_at;
};

struct [[ eosio::table("peteffects"), eosio::contract("monstereosio") ]] st_peteffects {
  uuid                   pet_id;
  vector<st_temp_effect> effects;

  uint64_t primary_key() const { return pet_id; }

  void update_effects(st_temp_effect const& new_effect) {
    effects.erase(std::remove_if(effects.begin(), effects.end(),
                                 [&](auto& e) {
                                   return e.effect == new_effect.effect || e.expires_at <= now();
                                 }),
                  effects.end());

    if (new_effect.effect > 0 && new_effect.expires_at > now())
      effects.emplace_back(new_effect);
  }
};
typedef multi_index<"peteffects"_n, st_peteffects> _tb_peteffects;

} // namespace effect_types