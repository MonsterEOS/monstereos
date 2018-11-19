using namespace types;
using namespace utils;

bool _roll_and_test(const int &now, int &primer, int per_ten_thounsad) {
  primer = (primer + now) % 65537;
  return (primer % 10000) < per_ten_thounsad;
}

void pet::openchest(name player) {

  require_auth(player);

  auto itr_account = accounts2.find(player.value);
  eosio_assert(itr_account != accounts2.end(), "account is not signed up");

  // add daily chest
  st_account2 account = *itr_account;
  bool is_daily_chest = (now() - account.actions[OPEN_DAILY_CHEST]) >= (24 * HOUR);
  if (is_daily_chest) {
    SEND_INLINE_ACTION( *this, issueitem, {_self, "active"_n}, {player, asset{1, CHEST}, "dailychest"} );

    // updates last received dailychest
    accounts2.modify(itr_account, same_payer, [&](auto &r) {
      r.actions[OPEN_DAILY_CHEST] = now();
    });
  } else {
    eosio_assert(account.assets[CHEST] >= 1, "player has no chest to open");
  }

  // schedule reward in next 3 secs
  transaction trx{};
  trx.actions.emplace_back(
      permission_level{_self, "active"_n},
      _self, "chestreward"_n,
      std::make_tuple(player, 1, "openchest")
  );
  trx.delay_sec = 1 + _random(3);
  trx.send(1, _self);
}

void pet::issueitem( name player, asset item, string reason) {
  require_auth(_self);

  auto itr_account = accounts2.find(player.value);
  eosio_assert(itr_account != accounts2.end(), "account is not signed up");

  eosio_assert(item.is_valid(), "Invalid item issue");
  eosio_assert(item.amount > 0, "Quantity must be positive");

  accounts2.modify(itr_account, same_payer, [&](auto &r) {
    r.add_asset(item.symbol, item.amount);
  });
}

void pet::issueequip( name player, uuid itemtype, string reason) {
  require_auth(_self);

  auto itr_account = accounts2.find(player.value);
  eosio_assert(itr_account != accounts2.end(), "account is not signed up");

  auto itr_et = equiptypes.find(itemtype);
  eosio_assert(itr_et != equiptypes.end(), "invalid equipment type");

  st_equiptypes equipment_type = *itr_et;

  equipments.emplace(_self, [&](auto &r) {
    r.id = equipments.available_primary_key();
    r.owner = player;
    r.type = equipment_type.type;
    r.item_id = equipment_type.id;
    r.attack = equipment_type.attack;
    r.defense = equipment_type.defense;
    r.hp = equipment_type.hp;
    r.equipped_pet = 0;
    r.claimed_at = 0;
  });
}

void pet::issueitems( name player, vector<asset> items, string /* reason */ ) {
  require_auth(_self);

  auto itr_account = accounts2.find(player.value);
  eosio_assert(itr_account != accounts2.end(), "account is not signed up");

  accounts2.modify(itr_account, same_payer, [&](auto &r) {
    for (auto item : items) {
      eosio_assert(item.is_valid(), "Invalid item issue");
      eosio_assert(item.amount > 0, "Quantity must be positive");
      r.add_asset(item.symbol, item.amount);
    }
  });
}

void pet::chestreward(name player, uint8_t modifier, string reason) {
  require_auth(_self);

  auto itr_account = accounts2.find(player.value);
  eosio_assert(itr_account != accounts2.end(), "account is not signed up");

  // check chest balance
  st_account2 account = *itr_account;
  auto player_chests = account.assets[CHEST];
  eosio_assert(player_chests >= 1, "player has no chest to open");

  // reduce chest balance
  accounts2.modify(itr_account, same_payer, [&](auto &r) {
    r.assets[CHEST] = player_chests - 1;
  });

  int base = _random(65537);
  int primer = base;
  int timestamp = now();

  // calc rewards
  int candies = (1 + (primer % 4)) * modifier;
  bool energy_drink = _roll_and_test(timestamp, primer, 500 * modifier);
  bool small_hp_potion = _roll_and_test(timestamp, primer, 2000 * modifier);
  bool medium_hp_potion = _roll_and_test(timestamp, primer, 1000 * modifier);
  bool large_hp_potion = _roll_and_test(timestamp, primer, 500 * modifier);
  bool total_hp_potion = _roll_and_test(timestamp, primer, 100 * modifier);
  bool attack_orb = _roll_and_test(timestamp, primer, 100 * modifier);
  bool super_attack_orb = _roll_and_test(timestamp, primer, 50 * modifier);
  bool defense_orb = _roll_and_test(timestamp, primer, 100 * modifier);
  bool super_defense_orb = _roll_and_test(timestamp, primer, 50 * modifier);
  bool ihp_orb = _roll_and_test(timestamp, primer, 100 * modifier);
  bool super_ihp_orb = _roll_and_test(timestamp, primer, 50 * modifier);
  bool xp_bronze_scroll = _roll_and_test(timestamp, primer, 50 * modifier);
  bool xp_silver_scroll = _roll_and_test(timestamp, primer, 25 * modifier);
  bool xp_gold_scroll = _roll_and_test(timestamp, primer, 10 * modifier);
  bool sxp_bronze_scroll = _roll_and_test(timestamp, primer, 25 * modifier);
  bool sxp_silver_scroll = _roll_and_test(timestamp, primer, 10 * modifier);
  bool sxp_gold_scroll = _roll_and_test(timestamp, primer, 5 * modifier);
  bool revive_tome = _roll_and_test(timestamp, primer, 1 * modifier);

  // increment items balance
  vector<asset> items{};
  items.emplace_back(asset{candies, CANDY});
  if (energy_drink) items.emplace_back(asset{1, ENERGY_DRINK});
  if (small_hp_potion) items.emplace_back(asset{1, SMALL_HP_POTION});
  if (medium_hp_potion) items.emplace_back(asset{1, MEDIUM_HP_POTION});
  if (large_hp_potion) items.emplace_back(asset{1, LARGE_HP_POTION});
  if (total_hp_potion) items.emplace_back(asset{1, TOTAL_HP_POTION});
  if (attack_orb) items.emplace_back(asset{1, INCREASED_ATTACK_ORB});
  if (super_attack_orb) items.emplace_back(asset{1, SUPER_ATTACK_ORB});
  if (defense_orb) items.emplace_back(asset{1, INCREASED_DEFENSE_ORB});
  if (super_defense_orb) items.emplace_back(asset{1, SUPER_DEFENSE_ORB});
  if (ihp_orb) items.emplace_back(asset{1, INCREASED_HP_ORB});
  if (super_ihp_orb) items.emplace_back(asset{1, SUPER_HP_ORB});
  if (xp_bronze_scroll) items.emplace_back(asset{1, BRONZE_XP_SCROLL});
  if (xp_silver_scroll) items.emplace_back(asset{1, SILVER_XP_SCROLL});
  if (xp_gold_scroll) items.emplace_back(asset{1, GOLD_XP_SCROLL});
  if (sxp_bronze_scroll) items.emplace_back(asset{1, BRONZE_XP_SCROLL});
  if (sxp_silver_scroll) items.emplace_back(asset{1, SILVER_XP_SCROLL});
  if (sxp_gold_scroll) items.emplace_back(asset{1, GOLD_XP_SCROLL});
  if (revive_tome) items.emplace_back(asset{1, REVIVE_TOME});

  SEND_INLINE_ACTION( *this, issueitems, {_self,"active"_n}, {player, items, reason} );

  bool got_boots = false;
  uuid boots_id = 20;
  uint8_t chance = 2;
  while (!got_boots && boots_id > 10) {
    uint8_t half = chance/2;
    got_boots = _roll_and_test(timestamp, primer, half * modifier);
    chance = chance * 2;
    boots_id = boots_id - 1;
  }
  if (got_boots) {
    SEND_INLINE_ACTION( *this, issueequip, {_self,"active"_n}, {player, boots_id, reason} );
  }

  bool got_armor = false;
  uuid armor_id = 10;
  chance = 2;
  while (!got_armor && armor_id > 0) {
    uint8_t half = chance/2;
    got_armor = _roll_and_test(timestamp, primer, half * modifier);
    chance = chance * 2;
    armor_id = armor_id - 1;
  }
  if (got_armor) {
    SEND_INLINE_ACTION( *this, issueequip, {_self,"active"_n}, {player, armor_id, reason} );
  }

  bool got_weapon = false;
  uuid weapon_id = 33;
  chance = 2;
  while (!got_weapon && weapon_id > 20) {
    uint8_t half = chance/2;
    if (weapon_id == 32) half = half + 1;
    if (weapon_id == 31) half = half + 2;
    if (weapon_id == 30) half = half + 3;

    got_weapon = _roll_and_test(timestamp, primer, half * modifier);

    if (weapon_id < 30) {
      chance = chance * 2;
    }
    weapon_id = weapon_id - 1;
  }
  if (got_weapon) {
    SEND_INLINE_ACTION( *this, issueequip, {_self,"active"_n}, {player, weapon_id, reason} );
  }

}

void pet::petequip(uuid pet_id, uuid item_id) {
  auto itr_item = equipments.find(item_id);
  eosio_assert(itr_item != equipments.end(), "invalid equipment");
  auto item = *itr_item;
  require_auth(item.owner);

  auto itr_pet = pets.find(pet_id);
  eosio_assert(itr_pet != pets.end(), "invalid pet");
  auto pet = *itr_pet;
  require_auth(pet.owner);

  eosio_assert(pet.owner == item.owner, "invalid pet/item owner");

  auto pet_equips = equipments.get_index<"bypet"_n>();
  auto last_equip_itr = pet_equips.find(pet_id);

  // unequip current item
  for (; last_equip_itr != pet_equips.end(); last_equip_itr++) {
    auto equip = *last_equip_itr;
    if (equip.type == item.type) {
      pet_equips.modify(last_equip_itr, item.owner, [&](auto &r) {
        r.equipped_pet = 0;
      });
    }
  }

  // equip new item
  equipments.modify(itr_item, item.owner, [&](auto &r) {
    r.equipped_pet = pet_id;
  });
}

void pet::petunequip(uuid item_id) {
  auto itr_item = equipments.find(item_id);
  eosio_assert(itr_item != equipments.end(), "invalid equipment");
  auto item = *itr_item;
  require_auth(item.owner);

  // unequip item
  equipments.modify(itr_item, item.owner, [&](auto &r) {
    r.equipped_pet = 0;
  });
}

void pet::petconsume(uuid pet_id, symbol item) {

    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    require_auth(pet.owner);

    auto pc = _get_pet_config();

    eosio_assert(_is_alive(pet, pc) || item == REVIVE_TOME, "deads don't consume anything");
    eosio_assert(!pet.is_sleeping(), "pet is sleeping");

    // check the item balance
    auto itr_account = accounts2.find(pet.owner.value);
    eosio_assert(itr_account != accounts2.end(), "pet owner is not signed up");

    st_account2 account = *itr_account;
    auto balance = account.assets[item];
    eosio_assert(balance >= 1, "player does not have the item to consume");
    accounts2.modify(itr_account, same_payer, [&](auto &r) {
        r.assets[item] = balance - 1;
    });

    // execute consumption action here
    if (item == ENERGY_DRINK) {
      eosio_assert(pet.energy_drinks < MAX_DAILY_ENERGY_DRINKS, "you can only consume 10 energy drinks per day");
      pets.modify(itr_pet, same_payer, [&](auto &r) {
        r.energy_drinks = r.energy_drinks + 1;
        r.energy_used = 0;
      });
    } else if (item == REVIVE_TOME) {
      pets.modify(itr_pet, same_payer, [&](auto& r) {
        // r.death_at      = 0;
        r.last_fed_at   = now();
        r.last_bed_at   = r.last_fed_at;
        r.last_awake_at = r.last_fed_at + 1;
        r.energy_drinks = 0;
        r.energy_used   = 0;
      });
    } else {

      effect_type type = 0;
      uint32_t expires_at = now() + HOUR;
      if (item == INCREASED_ATTACK_ORB) {
        type = EFFECT_IATOR;
      } else if (item == SUPER_ATTACK_ORB) { 
        type = EFFECT_SATOR;
      } else if (item == INCREASED_DEFENSE_ORB) { 
        type = EFFECT_IDFOR;
      } else if (item == SUPER_DEFENSE_ORB) { 
        type = EFFECT_SDFOR;
      } else if (item == INCREASED_HP_ORB) { 
        type = EFFECT_IHPOR;
      } else if (item == SUPER_HP_ORB) { 
        type = EFFECT_SHPOR;
      } else if (item == BRONZE_XP_SCROLL) { 
        type = EFFECT_BRXSC;
        expires_at = now() + (12 * HOUR);
      } else if (item == SILVER_XP_SCROLL) { 
        type = EFFECT_SVXSC;
        expires_at = now() + (24 * HOUR);
      } else if (item == GOLD_XP_SCROLL) { 
        type = EFFECT_GLXSC;
        expires_at = now() + (48 * HOUR);
      } else if (item == SUPER_BRONZE_XP_SCROLL) { 
        type = EFFECT_SBXSC;
        expires_at = now() + (12 * HOUR);
      } else if (item == SUPER_SILVER_XP_SCROLL) { 
        type = EFFECT_SSXSC;
        expires_at = now() + (24 * HOUR);
      } else if (item == SUPER_GOLD_XP_SCROLL) { 
        type = EFFECT_SGXSC;
        expires_at = now() + (48 * HOUR);
      } else {
        eosio_assert(false, "item not implemented");
      }

      st_temp_effect new_effect{type, expires_at};

      auto itr_effect = peteffects.find(pet_id);
      if (itr_effect != peteffects.end()) {
        peteffects.modify(itr_effect, same_payer, [&](auto& r) {
          r.update_effects(new_effect);
        });
      } else {
        peteffects.emplace(_self, [&](auto& r) {
          r.pet_id = pet_id;
          r.effects = {new_effect};
        });
      }
    }

    // primer roller
    _random(10);

}
