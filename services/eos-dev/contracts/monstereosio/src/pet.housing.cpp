void pet::addhousetype(vector<uint8_t> slots) {
  require_auth(_self);

  eosio_assert(slots.size() > 0, "each type must have at least 1 element");

  housetypes.emplace(_self, [&](auto& r) {
    r.id         = housetypes.available_primary_key();
    r.room_slots = slots;
  });
}

void pet::chghousetype(uint64_t id, vector<uint8_t> slots) {
  require_auth(_self);

  eosio_assert(slots.size() > 0, "each type must have at least 1 element");

  auto itr = housetypes.find(id);
  eosio_assert(itr != housetypes.end(), "Invalid house type");

  housetypes.modify(itr, _self, [&](auto& r) { r.room_slots = slots; });
}

void pet::housemove(name owner, vector<vector<uuid>> house_pets) {
  eosio_assert(house_pets.size() == 6, "invalid house disposition");
  
  require_auth(owner);

  // check user has signed up prior to pet creation
  auto itr_account = accounts2.find(owner);
  eosio_assert(itr_account != accounts2.end(), "account not found");

  // get house type
  auto house = housetypes.get(itr_account->house_type, "house not found");

  // flat current pets
  vector<uuid> current_pets{};
  for (auto& pets : itr_account->house_pets) {
    for (auto& pet : pets) {
      current_pets.push_back(pet);
    }
  }

  // check the pets are the same
  uint8_t index = 0;
  for (auto& pets : house_pets) {

    uint8_t busy_slots = 0;

    for (auto& pet : pets) {
      
      bool valid_pet = false;
      for (auto& current_pet : current_pets) {
        if (current_pet == pet) {
          valid_pet = true;
          break;
        }
      }

      eosio_assert(valid_pet, "invalid pet detected");
      busy_slots++;
    }

    eosio_assert(house.room_slots[index] >= busy_slots, "invalid spaces disposition");
    index++;
  }

  // overwrite with validated positions
  accounts2.modify(itr_account, 0, [&](auto &r) {
    r.house_pets = house_pets;
  });
}
