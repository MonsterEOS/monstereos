using namespace types;
using namespace utils;

void pet::openchest(name owner) {
  require_auth(owner);
  
  auto itr_account = accounts2.find(user);
  eosio_assert(itr_account != accounts2.end(), "please signup to be able to open chests");

  int primer = _random(65537) + now();

  int candies = 1 + (primer % 4);

  primer += candies + now();

  int energy_drinks = primer % 99 <= 5 ? 1 : 0;

  primer = (primer + now()) % 65537;

  int small_hp_potion = primer % 99 <= 20 ? 1 : 0;

  primer = (primer + now()) % 65537;

  int medium_hp_potion = primer % 99 <= 10  ? 1 : 0;

  primer = (primer + now()) % 65537;

  int large_hp_potion = primer % 99 <= 5 ? 1 : 0;
  
  primer = (primer + now()) % 65537;

  int total_hp_potion = primer % 99 <= 1 ? 1 : 0;
  
  primer = (primer + now()) % 65537;

  int attack_potion = primer % 99 <= 1 ? 1 : 0;
  
  primer = (primer + now()) % 65537;

  int super_attack_potion = primer % 999 <= 5 ? 1 : 0;
  
  primer = (primer + now()) % 65537;

  int defense_potion = primer % 99 <= 1 ? 1 : 0;
  
  primer = (primer + now()) % 65537;

  int super_defense_potion = primer % 999 <= 5 ? 1 : 0;
  
  primer = (primer + now()) % 65537;

  int ihp_potion = primer % 99 <= 1 ? 1 : 0;
  
  primer = (primer + now()) % 65537;

  int super_ihp_potion = primer % 999 <= 5 ? 1 : 0;
  
// Increased XP Bronze
// Increased XP Silver
// Increased XP Gold
// Super Increased XP Bronze
// Super Increased XP Silver
// Super Increased XP Gold

// REVIVE POTION

}

