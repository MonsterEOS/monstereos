using namespace types;
using namespace utils;

void pet::orderask(uuid pet_id, name new_owner, asset amount, uint32_t until = 0) {
    const auto& pet = pets.get(pet_id, "E404|Invalid pet");

    require_auth(pet.owner);
    eosio_assert(pet.owner != new_owner, "new owner must be different than current owner");

    // validate eos
    eosio_assert(amount.symbol == string_to_symbol(4, "EOS"),
    "MonsterEOS only accepts EOS for transfers");
    eosio_assert(amount.is_valid(), "Invalid token transfer");
    eosio_assert(amount.amount >= 0, "amount cannot be negative");

    auto idx_existent_order = orders.get_index<N(by_user_and_pet)>();
    auto user_pet_id = combine_ids(pet.owner, pet_id);
    auto itr_user_pet = idx_existent_order.find(user_pet_id);
    uint32_t placed_at = now();

    order_type type;
    if (until > 0) {
        eosio_assert(until > placed_at, "E404|End of temporary transfer must be in the future");
        type = ORDER_TYPE_ASK_RENT; // temporary transfer
    } else {
        type = ORDER_TYPE_ASK; // indefinite transfer
    }

    if (itr_user_pet != idx_existent_order.end()) {
        auto order = *itr_user_pet;

        eosio_assert(order.type != ORDER_TYPE_RENTING, "E404|order can't be updated during temporary transfers");

        orders.modify(*itr_user_pet, pet.owner, [&](auto &r) {
            r.value = amount;
            r.new_owner = new_owner;
            r.type = type;
            r.placed_at = placed_at;
            r.transfer_ends_at = until;
        });
    } else {
        orders.emplace(pet.owner, [&](auto& r){
            st_orders order {
                .id = orders.available_primary_key(),
                .user = pet.owner,
                .new_owner = new_owner,
                .pet_id = pet.id,
                .type = type,
                .value = amount,
                .placed_at = placed_at,
                .ends_at = 0,
                .transfer_ends_at = until};
            r = order;
        });
    }

    // make sure new_owner exists
    if (new_owner != (const name) {0}) {
        require_recipient(new_owner);
    }

    print("new owner can become ", new_owner);
}

void pet::removeask(name owner, uuid pet_id) {

    require_auth(owner);

    auto idx_existent_order = orders.get_index<N(by_user_and_pet)>();
    const auto& order = idx_existent_order.get(combine_ids(owner, pet_id), "E404|Invalid order");

    eosio_assert(order.user == owner, "E404|order can only be removed by owner of order");

    eosio_assert(order.type != ORDER_TYPE_RENTING, "E404|orders can't be removed during temporary transfers");

    orders.erase(order);
}

void pet::claimpet(name old_owner, uuid pet_id, name claimer) {
    require_auth(claimer);

    auto idx_existent_order = orders.get_index<N(by_user_and_pet)>();
    const auto& order = idx_existent_order.get(combine_ids(old_owner, pet_id), "E404|Invalid order");
    const auto& pet = pets.get(pet_id, "E404|Invalid pet");

    const name new_owner = order.new_owner;
    eosio_assert(
        claimer == new_owner ||
        new_owner == (const name) {0},
        "E404|Invalid claimer");
    eosio_assert(old_owner == pet.owner, "E404|Pet already transferred");

    eosio_assert(order.type != ORDER_TYPE_RENTING || order.transfer_ends_at < now(), "E404|Temporary transfer not yet over");
    eosio_assert(order.value.amount == 0, "E404|orders requires value transfer");

    // transfer pet
    // action(permission_level{_self, N(active)}, N(monstereosio), N(transferpet), std::make_tuple(pet.id, claimer)).send();
    _transfer_pet(pet.id, claimer);

    if (order.transfer_ends_at > 0) {
        if (order.type == ORDER_TYPE_ASK_RENT) {
            orders.modify(order, 0, [&](auto& r){
                r.user = claimer;
                r.new_owner = old_owner;
                r.value = asset(0); // transfer back is for free
                r.type = ORDER_TYPE_RENTING;
            });
            print("order converter to temporary transfer");
        } else if (order.type == ORDER_TYPE_RENTING) {
            orders.erase(order);
            print("order erased.");
        }
    } else {
        orders.erase(order);
        print("order erased.");
    }
}

void pet::bidpet(uuid pet_id, name bidder, asset amount, uint32_t until = 0) {

    require_auth(bidder);

    const auto& pet = pets.get(pet_id, "E404|Invalid pet");

    eosio_assert(pet.owner != bidder, "bidder must be different than current owner");

    // validate eos
    eosio_assert(amount.symbol == string_to_symbol(4, "EOS"),
    "MonsterEOS only accepts EOS for transfers");
    eosio_assert(amount.is_valid(), "Invalid token transfer");
    eosio_assert(amount.amount >= 0, "amount cannot be negative");

    auto idx_existent_order = orders.get_index<N(by_user_and_pet)>();
    auto user_pet_id = combine_ids(bidder, pet_id);
    auto itr_user_pet = idx_existent_order.find(user_pet_id);
    uint32_t placed_at = now();

    order_type type;
    if (until > 0) {
        type = ORDER_TYPE_BID_RENT; // temporary transfer
    } else {
        type = ORDER_TYPE_BID; // indefinite transfer
    }

    if (itr_user_pet != idx_existent_order.end()) {
        auto order = *itr_user_pet;

        orders.modify(*itr_user_pet, pet.owner, [&](auto &r) {
            r.value = amount;
            r.placed_at = placed_at;
            r.transfer_ends_at = until;
        });
    } else {
        orders.emplace(bidder, [&](auto& r){
            st_orders order {
                .id = orders.available_primary_key(),
                .user = bidder,
                .pet_id = pet.id,
                .type = type,
                .value = amount,
                .placed_at = placed_at,
                .ends_at = 0,
                .transfer_ends_at = until};
            r = order;
        });
    }
}

void pet::removebid(name bidder, uuid pet_id) {

    require_auth(bidder);

    auto idx_existent_order = orders.get_index<N(by_user_and_pet)>();
    const auto& order = idx_existent_order.get(combine_ids(bidder, pet_id), "E404|Invalid order");

    eosio_assert(order.user == bidder, "E404|bids can only be removed by owner of bid");

    orders.erase(order);
}

void pet::_transfer_pet(uuid pet_id, name new_owner) {

    require_auth(N(monstereosmt));

    auto itr_pet = pets.find(pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    auto pet = *itr_pet;

    print(pet_id, "| transfering pet ");

    pets.modify(itr_pet, 0, [&](auto &r) {
        r.owner = new_owner;
    });

    print("new owner ", new_owner);
}

void pet::_handle_transf(string memo, asset quantity, account_name from) {

    string sorderid = memo.substr(3);
    auto orderid = stoi(sorderid);
    print("\ntransfer received for order ", orderid);

    _tb_orders orders(N(monstereosmt), N(monstereosmt));
    auto itr_order = orders.find(orderid);

    eosio_assert(itr_order != orders.end(), "E404|Invalid order");

    auto order = *itr_order;
    auto itr_pet = pets.find(order.pet_id);
    eosio_assert(itr_pet != pets.end(), "E404|Invalid pet");
    auto pet = *itr_pet;

    eosio_assert(order.type != 10, "E499|order is already RENTING");
    eosio_assert(order.user != from, "E499|You cant buy your own order DUH");
    eosio_assert(quantity.amount == order.value.amount, "E499|amounts does not match order's amount");
    eosio_assert(quantity.symbol == order.value.symbol, "E499|token does not match order's token");
    eosio_assert(pet.owner == order.user, "E499|monster does not to belong to order's user");

    name old_owner = pet.owner;
    pets.modify(itr_pet, 0, [&](auto &r) {
        r.owner = name{from};
    });

    // transfer money to old owner
    _transfer_value(old_owner, quantity, "MonsterEOS order " + sorderid);
}

void pet::_transfer_value(name receiver, asset quantity, string memo) {
    action(
      permission_level{_self, N(active)},
      N(eosio.token),
      N(transfer),
      std::make_tuple(N(_self), receiver, quantity, memo)
    ).send();
}