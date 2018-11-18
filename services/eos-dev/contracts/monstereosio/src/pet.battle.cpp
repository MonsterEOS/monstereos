using namespace types;
using namespace utils;

/*
// void pet::battlecreate(name host, battle_mode mode, checksum256 secret) {
//   require_auth(host);

//   _tb_battle tb_battles(_self, _self);
//   auto itr_battle = tb_battles.find(host);

//   eosio_assert(itr_battle == tb_battles.end(), "you already host a battle!");
//   eosio_assert(mode == V1 || mode == V2 || mode == V3, "invalid battle mode");

//   // check and increase busy arenas counter
//   auto pc = _get_pet_config();
//   pc.battle_busy_arenas++;
//   eosio_assert(pc.battle_busy_arenas <= pc.battle_max_arenas, "all arenas are busy");

//   tb_battles.emplace(_self, [&](auto& r) {
//     r.host = host;
//     r.mode = mode;
//   });
//   _update_pet_config(pc);

//   SEND_INLINE_ACTION( *this, battlejoin, {host,N(active)}, {host, host, secret} );
// }

// void pet::battlejoin(name host, name player, checksum256 secret) {

//   require_auth(player);

//   _tb_battle tb_battles(_self, _self);
//   auto itr_battle = tb_battles.find(host);
//   eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
//   st_battle battle = *itr_battle;

//   eosio_assert(!battle.player_exists(player), "player is already in this battle");
//   eosio_assert(battle.commits.size() < 2, "battle is already full of players");

//   battle.add_player(player, secret);

//   tb_battles.modify(itr_battle, _self, [&](auto& r) {
//     r.commits = battle.commits;
//   });

// }

// void pet::battlestart(name host, name player, st_pick picks) {

//   require_auth(player);

//   _tb_battle tb_battles(_self, _self);
//   auto itr_battle = tb_battles.find(host);
//   eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
//   st_battle battle = *itr_battle;

//   eosio_assert(battle.started_at == 0, "battle already started");
//   eosio_assert(battle.commits.size() == 2, "battle has not enough players");

//   // validates and summarize reveals
//   auto pc = _get_pet_config();
//   bool valid_reveal = false;
//   vector<st_commit> reveals{};
//   for(auto& commit : battle.commits) {
//     if (commit.player == player) {
//       eosio_assert(commit.randoms.size() == 0, "commit was already revealed");

//       checksum256 source = get_hash(pack(picks));

//       eosio_assert(source == commit.commitment, "tampering your pick is not cool");
//       commit.randoms = picks.randoms;
//       reveals.emplace_back(commit);

//       _battle_add_pets(battle, player, picks.pets, pc);

//       valid_reveal = true;
//     } else if (commit.randoms.size() > 0) {
//       reveals.emplace_back(commit);
//     }
//   }
//   eosio_assert(valid_reveal, "invalid reveal");

//   // everybody commited, randomize all turns by random commits
//   if (reveals.size() == battle.commits.size()) {
//     std::sort (reveals.begin(), reveals.end(),
//       [](const st_commit &a, const st_commit &b) -> bool {
//         checksum256 result;
//         sha256( (char *)&a, sizeof(b)*2, &result);
//         return result.hash[1] < result.hash[0];
//       });
//     battle.started_at = now();
//     battle.last_move_at = now();
//     battle.commits = reveals;
//   }

//   tb_battles.modify(itr_battle, 0, [&](auto& r) {
//     r.pets_stats = battle.pets_stats;
//     r.started_at = battle.started_at;
//     r.last_move_at = battle.last_move_at;
//     r.commits = battle.commits;
//   });
// }
*/

void pet::quickbattle(battle_mode mode, name player, st_pick picks) {
  require_auth(player);
  eosio_assert(mode == V1 || mode == V2 || mode == V3, "invalid battle mode");
  eosio_assert(picks.pets.size() == mode, "pets selection is not valid");

  auto itr_player_battle = plsinbattles.find(player.value);
  eosio_assert(itr_player_battle == plsinbattles.end(), "player is already in another battle");

  _tb_battle tb_battles(_self, _self.value);
  auto idx_battle = tb_battles.template get_index<"start"_n>();
  auto itr_battle = idx_battle.lower_bound( 0 );

  auto pc = _get_pet_config();

  // primer roller
  _random(10);

  // no battle or only started battles, starting one
  if (itr_battle == idx_battle.end() || itr_battle->started_at > 0) {
    // check and increase busy arenas counter
    pc.battle_busy_arenas++;
    eosio_assert(pc.battle_busy_arenas <= pc.battle_max_arenas, "all arenas are busy");

    st_battle battle{};
    battle.add_quick_player(player);
    _battle_add_pets(battle, player, picks.pets, pc);

    tb_battles.emplace(_self, [&](auto& r) {
      r.host = player;
      r.mode = mode;
      r.commits = battle.commits;
      r.pets_stats = battle.pets_stats;
    });

    _update_pet_config(pc);
  } else {
    st_battle battle = *itr_battle;
    battle.add_quick_player(player);
    _battle_add_pets(battle, player, picks.pets, pc);

    idx_battle.modify(itr_battle, same_payer, [&](auto& r) {
      r.commits = battle.commits;
      r.pets_stats = battle.pets_stats;
      r.started_at = now();
      r.last_move_at = now();
    });
  }

  plsinbattles.emplace(_self, [&](auto& r) {
    r.player = player;
  });
}

void pet::_battle_add_pets(st_battle &battle,
                           name player,
                           vector<uint64_t> pet_ids,
                           const st_pet_config2 &pc) {

  for (auto& pet_id : pet_ids) {

    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    st_pets pet = *itr_pet;

    // only owners can use their pets in battle
    require_auth(pet.owner);
    eosio_assert(_is_alive(pet, pc), "dead pets don't battle");
    eosio_assert(!pet.is_sleeping(), "sleeping pets don't battle");
    eosio_assert(pet.has_energy(BATTLE_REQ_ENERGY), "pet has no energy for a battle");

    // consume energy
    pets.modify(itr_pet, same_payer, [&](auto& r) {
      r.energy_used = r.energy_used + BATTLE_REQ_ENERGY;
    });

    auto itr_pet_battle = petinbattles.find(pet_id);
    eosio_assert(itr_pet_battle == petinbattles.end(), "pet is already in another battle");
    petinbattles.emplace(_self, [&](auto& r) {
      r.pet_id = pet_id;
    });

    auto pet_equips = equipments.get_index<"bypet"_n>();
    auto last_equip_itr = pet_equips.find(pet_id);
    uint8_t atk = 0;
    uint8_t def = 0;
    uint8_t hp = 0;
    // unequip current item
    for (; last_equip_itr != pet_equips.end(); last_equip_itr++) {
      auto equip = *last_equip_itr;
      def += equip.defense;
      atk += equip.attack;
      hp += equip.hp;
    }

    battle.add_pet(pet_id, pet.type, player, pet.get_level(), pet.skill1, pet.skill2, pet.skill3, atk, def, hp);
  }
}

void pet::battleleave(name host, name player) {

  require_auth(player);

  _tb_battle tb_battles(_self, _self.value);
  auto itr_battle = tb_battles.find(host.value);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  eosio_assert(battle.started_at == 0, "battle already started");

  eosio_assert(battle.player_exists(player), "player not in this battle");

  // remove pets from battle
  for (st_pet_stat ps : battle.pets_stats) {
    auto itr_pet_battle = petinbattles.find(ps.pet_id);
    if (itr_pet_battle != petinbattles.end()) {
      petinbattles.erase( itr_pet_battle );
    }

    // undo used energy
    auto itr_pet = pets.find(ps.pet_id);
    pets.modify(itr_pet, same_payer, [&](auto& r) {
      r.energy_used = r.energy_used - BATTLE_REQ_ENERGY;
    });
  }

  auto itr_player_battle = plsinbattles.find(player.value);
  if (itr_player_battle != plsinbattles.end()) {
    plsinbattles.erase( itr_player_battle );
  }

  if (player == host) {
    tb_battles.erase( itr_battle );

    // decrease busy arenas counter
    auto pc = _get_pet_config();
    pc.battle_busy_arenas--;
    _update_pet_config(pc);
  } else {
    battle.remove_player(player);
    tb_battles.modify(itr_battle, same_payer, [&](auto& r) {
      r.commits = battle.commits;
      r.pets_stats = battle.pets_stats;
    });
  }
}

void pet::battleattack(name         host,
                       name         player,
                       uuid         pet_id,
                       uuid         pet_enemy_id,
                       element_type element_id) {

  require_auth(player);

  _tb_battle tb_battles(_self, _self.value);
  auto itr_battle = tb_battles.find(host.value);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  auto pc = _get_pet_config();

  // check and rotate turn only if player is not idle
  battle.check_turn_and_rotate(player, pc.battle_idle_tolerance);

  // get current pet and enemy types
  uint8_t pet_type{0};
  uint8_t pet_enemy_type_id{0};
  bool valid_pet = false;
  for (const auto& pet_stat : battle.pets_stats) {
    if (pet_stat.pet_id == pet_id) {
      eosio_assert(pet_stat.player == player, "you cannot control this monster");
      eosio_assert(pet_stat.hp > 0, "this monster is dead");
      pet_type = pet_stat.pet_type;
      valid_pet = true;
    } else if (pet_stat.pet_id == pet_enemy_id) {
      pet_enemy_type_id = pet_stat.pet_type;
    }
  }

  eosio_assert(valid_pet, "invalid attack");

  eosio_assert(_is_element_valid(pet_type, element_id), "invalid attack element");

  // cross ratio elements to enemy pet elements
  uint8_t ratio{5}; // default ratio
  const auto& attack_element = elements.get(element_id, "invalid element");
  const auto& pet_enemy_types = pettypes.get(pet_enemy_type_id, "invalid pet enemy type");
  for (const auto& pet_element : pet_enemy_types.elements) {
    const auto& type_ratio = attack_element.ratios[pet_element];
    ratio = type_ratio > ratio ? type_ratio : ratio;
  }

  // random factor to attack
  // checksum256 result;
  // sha256( (char *)&battle.commits[0], sizeof(battle.commits[1])*2, &result);
  // uint8_t factor = (result.hash[1] + result.hash[0] + now()) %
  //   (pc.attack_max_factor + 1 - pc.attack_min_factor) + pc.attack_min_factor;
  uint8_t factor = _random(pc.attack_max_factor + 1 - pc.attack_min_factor) + pc.attack_min_factor;

  // damage based on element ratio and factor
  uint8_t damage = factor * ratio / 10;
  print("\nattack results ====\nattack damage: ", int{damage},
    "\nelement ratio: ", int{ratio},
    "\nattack factor: ", int{factor});

  // updates pet hp and finish attack turn
  std::map<name, uint8_t> alive_pets{};
  for (auto& pet_stat : battle.pets_stats) {
    if (pet_stat.pet_id == pet_enemy_id) {
      pet_stat.hp = damage > pet_stat.hp ? 0 : pet_stat.hp - damage;
    }

    // update alive pets
    uint8_t alive_counter = pet_stat.hp > 0 ? 1 : 0;
    auto [it, success] = alive_pets.insert(
      std::make_pair(pet_stat.player, alive_counter));
    if (!success) {
      it-> second = it->second + alive_counter;
    }

    print("\npet: ", pet_stat.pet_id, " - hp: ", int{pet_stat.hp});
  }

  // check battle end
  uint8_t players_alive{0};
  name winner{};
  for (auto const& [player, pets_alive] : alive_pets) {
    if (pets_alive > 0) {
      players_alive++;
      winner = player;
    }
  }

  // modify stats and goes to next turn or end battle
  if (players_alive > 1) {
    tb_battles.modify(itr_battle, same_payer, [&](auto& r) {
      r.pets_stats = battle.pets_stats;
      r.commits = battle.commits;
      r.last_move_at = now();
    });
  } else {
    // we need an action here?
    print(" and the winner is >>> ", winner);
    SEND_INLINE_ACTION( *this, battlefinish, {_self,"active"_n}, {host, winner} );
  }
}

void pet::battlefinish(name host, name winner) {
  require_auth(_self);

  _tb_battle tb_battles(_self, _self.value);
  auto itr_battle = tb_battles.find(host.value);
  eosio_assert(itr_battle != tb_battles.end(), "battle not found for current host");
  st_battle battle = *itr_battle;

  // removes pets from in battle status table
  for (st_pet_stat &ps : battle.pets_stats) {
    auto itr_pet_battle = petinbattles.find(ps.pet_id);
    if (itr_pet_battle != petinbattles.end()) {
      petinbattles.erase( itr_pet_battle );
    }

    // add experience points
    auto itr_pet = pets.find(ps.pet_id);
    if (itr_pet != pets.end()) {
      pets.modify(itr_pet, same_payer, [&](auto& r) {
        
        // adjust legacy pets
        if (r.experience > 1500000000) 
          r.experience = 0;
        
        r.experience = r.experience + (winner == r.owner ? XP_WON : XP_LOST);
      });
    }
  }

  // removes players from in battle status table
  for (st_commit &cmm : battle.commits) {
    auto itr_player_battle = plsinbattles.find(cmm.player.value);
    if (itr_player_battle != plsinbattles.end()) {
      plsinbattles.erase( itr_player_battle );
    }
  }

  tb_battles.erase( itr_battle );

  // decrease busy arenas counter
  auto pc = _get_pet_config();
  pc.battle_busy_arenas--;
  _update_pet_config(pc);

  // primer roller
  _random(10);

}

// force removes a pet from petinbattles table
void pet::battlepfdel( uuid pet_id, string /* reason */ ) {
  auto itr_pet_battle = petinbattles.find(pet_id);
  eosio_assert(itr_pet_battle != petinbattles.end(), "Invalid pet battle stat");
  petinbattles.erase( itr_pet_battle );
}