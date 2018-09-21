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
