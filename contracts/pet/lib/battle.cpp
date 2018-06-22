using namespace types;
using namespace utils;

void pet::battlecreate(name host, battle_mode mode) {
  require_auth(host);

  battles tb_battles(_self, _self);
  auto itr_battle = tb_battles.find(host);
  eosio_assert(itr_battle == tb_battles.end(), "you already host a battle");
  eosio_assert(mode == V1 || mode == V2 || mode == V3, "invalid battle mode");

  tb_battles.emplace(_self, [&](auto& r) {
    r.host = host;
    r.mode = mode;
  });
}

void pet::battlejoin(name host, name player, checksum256 secret) {

  // auto itr_pet = pets.find(pet_id);
  // eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
  // require_auth(itr_pet->owner);

  require_auth(player);

  battles tb_battles(_self, _self);
  auto itr_battle = tb_battles.find(host);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  eosio_assert(!battle.player_exists(player), "player is already in this battle");
  eosio_assert(battle.commits.size() < 2, "battle is already full of players");

  battle.add_player(player, secret);

  tb_battles.modify(itr_battle, _self, [&](auto& r) {
    r.commits = battle.commits;
  });

}

void pet::battleleave(name host, name player) {

  // auto itr_pet = pets.find(pet_id);
  // eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
  // require_auth(itr_pet->owner);

  require_auth(player);

  battles tb_battles(_self, _self);
  auto itr_battle = tb_battles.find(host);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  eosio_assert(battle.started_at == 0, "battle already started");

  eosio_assert(battle.player_exists(player), "player not in this battle");

  if (player == host) {
    tb_battles.erase( itr_battle );
  } else {
    battle.remove_player(player);
    tb_battles.modify(itr_battle, 0, [&](auto& r) {
      r.commits = battle.commits;
    });
  }

}

void pet::battlestart(name host, name player, checksum256 source) {

  require_auth(player);

  battles tb_battles(_self, _self);
  auto itr_battle = tb_battles.find(host);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  eosio_assert(battle.started_at == 0, "battle already started");

  // validates and summarize reveals
  bool valid_reveal = false;
  vector<st_commit> reveals{};
  for(auto& commit : battle.commits) {
    if (commit.player == player) {
      eosio_assert(is_zero(commit.reveal), "commit was already revealed");

      assert_sha256( (char *)&source, sizeof(source),
        (const checksum256 *)&commit.commitment );
      commit.reveal = source;
      reveals.emplace_back(commit);
      valid_reveal = true;
    } else if (!is_zero(commit.reveal)) {
      reveals.emplace_back(commit);
    }
  }
  eosio_assert(valid_reveal, "invalid reveal");

  // everybody commited, randomize all turns by random commits
  if (reveals.size() == battle.commits.size()) {
    std::sort (reveals.begin(), reveals.end(),
      [](const st_commit &a, const st_commit &b) -> bool {
        checksum256 result;
        sha256( (char *)&a, sizeof(b)*2, &result);
        return result.hash[1] < result.hash[0];
      });
    battle.started_at = now();
    battle.commits = reveals;
  }

  tb_battles.modify(itr_battle, 0, [&](auto& r) {
    r.started_at = battle.started_at;
    r.commits = battle.commits;
    r.turns = battle.turns;
  });
}

void pet::battleattack(name host,
                       uuid         pet_id,
                       uuid         pet_enemy_id,
                       string       secret) {

  auto itr_pet = pets.find(pet_id);
  eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
  require_auth(itr_pet->owner);

  battles tb_battles(_self, _self);
  auto itr_battle = tb_battles.find(host);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  print("verify if turn is valid, calc attack and save secret");

}

void pet::battleattrev(name   host,
                       uuid   pet_id,
                       string value) {

  auto itr_pet = pets.find(pet_id);
  eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
  require_auth(itr_pet->owner);

  battles tb_battles(_self, _self);
  auto itr_battle = tb_battles.find(host);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  print("parsing attack value/secret");

}

void pet::_calc_turn_and_next(st_battle battle) {

  // initialize battle
  bool has_next_turn = true;
  if (battle.turns.size() > 0) {
    print("lazy developer calculates turn results and define if we have a next turn");
  }

  // initialize next turn
  if (has_next_turn) {
    st_turn t{{}, now() + 60};
    battle.turns.emplace_back(t);
  }

}
