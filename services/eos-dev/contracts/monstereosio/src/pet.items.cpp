using namespace types;
using namespace utils;

bool _roll_and_test(const int &now, int &primer, int per_ten_thounsad) {
  primer = (primer + now) % 65537;
  return (primer % 10000) < per_ten_thounsad;
}

void pet::openchest(name player) {

  require_auth(_self);

  auto itr_account = accounts2.find(player);
  eosio_assert(itr_account != accounts2.end(), "account is not signed up");

  // schedule reward in next 3 secs
  transaction trx{};
  trx.actions.emplace_back(
      permission_level{_self, N(active)},
      _self, N(reward),
      std::make_tuple(player, 1, "openchest")
  );
  trx.delay_sec = 1 + _random(3);
  trx.send(1, _self);
}

void pet::reward(name player, uint8_t modifier, string /* reason */) {
  require_auth(_self);
  
  auto itr_account = accounts2.find(player);
  eosio_assert(itr_account != accounts2.end(), "account is not signed up");

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
  bool attack_elixir = _roll_and_test(timestamp, primer, 100 * modifier);
  bool super_attack_elixir = _roll_and_test(timestamp, primer, 50 * modifier);
  bool defense_elixir = _roll_and_test(timestamp, primer, 100 * modifier);
  bool super_defense_elixir = _roll_and_test(timestamp, primer, 50 * modifier);
  bool ihp_elixir = _roll_and_test(timestamp, primer, 100 * modifier);
  bool super_ihp_elixir = _roll_and_test(timestamp, primer, 50 * modifier);
  bool xp_bronze_scroll = _roll_and_test(timestamp, primer, 50 * modifier);
  bool xp_silver_scroll = _roll_and_test(timestamp, primer, 25 * modifier);
  bool xp_gold_scroll = _roll_and_test(timestamp, primer, 10 * modifier);
  bool sxp_bronze_scroll = _roll_and_test(timestamp, primer, 25 * modifier);
  bool sxp_silver_scroll = _roll_and_test(timestamp, primer, 10 * modifier);
  bool sxp_gold_scroll = _roll_and_test(timestamp, primer, 5 * modifier);
  bool revive_tome = _roll_and_test(timestamp, primer, 1 * modifier);

  // increment items balance
  st_account2 account = *itr_account;
  account.add_asset(CANDY, candies);
  if (energy_drink) account.add_asset(ENERGY_DRINK, 1);
  if (small_hp_potion) account.add_asset(SMALL_HP_POTION, 1);
  if (medium_hp_potion) account.add_asset(MEDIUM_HP_POTION, 1);
  if (large_hp_potion) account.add_asset(LARGE_HP_POTION, 1);
  if (total_hp_potion) account.add_asset(TOTAL_HP_POTION, 1);
  if (attack_elixir) account.add_asset(INCREASED_ATTACK_ELIXIR, 1);
  if (super_attack_elixir) account.add_asset(SUPER_ATTACK_ELIXIR, 1);
  if (defense_elixir) account.add_asset(INCREASED_DEFENSE_ELIXIR, 1);
  if (super_defense_elixir) account.add_asset(SUPER_DEFENSE_ELIXIR, 1);
  if (ihp_elixir) account.add_asset(INCREASED_HP_ELIXIR, 1);
  if (super_ihp_elixir) account.add_asset(SUPER_HP_ELIXIR, 1);
  if (xp_bronze_scroll) account.add_asset(BRONZE_XP_SCROLL, 1);
  if (xp_silver_scroll) account.add_asset(SILVER_XP_SCROLL, 1);
  if (xp_gold_scroll) account.add_asset(GOLD_XP_SCROLL, 1);
  if (sxp_bronze_scroll) account.add_asset(BRONZE_XP_SCROLL, 1);
  if (sxp_silver_scroll) account.add_asset(SILVER_XP_SCROLL, 1);
  if (sxp_gold_scroll) account.add_asset(GOLD_XP_SCROLL, 1);
  if (revive_tome) account.add_asset(REVIVE_TOME, 1);

  accounts2.modify(itr_account, 0, [&](auto &r) {
    r.assets = account.assets;
  });
}
