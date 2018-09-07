#include "market.hpp"

void market::offerpet(uuid pet_id, name new_owner, asset amount, uint32_t until = 0) {
    const auto& pet = pets.get(pet_id, "E404|Invalid pet");

    require_auth(pet.owner);
    eosio_assert(pet.owner != new_owner, "new owner must be different than current owner");

    // validate eos
    eosio_assert(amount.symbol == string_to_symbol(4, "EOS"),
    "MonsterEOS only accepts EOS for transfers");
    eosio_assert(amount.is_valid(), "Invalid token transfer");
    eosio_assert(amount.amount >= 0, "amount cannot be negative");

    auto idx_existent_offer = offers.get_index<N(by_user_and_pet)>();
    auto user_pet_id = combine_ids(pet.owner, pet_id);
    auto itr_user_pet = idx_existent_offer.find(user_pet_id);
    uint32_t placed_at = now();

    transfer_type type;
    if (until > 0) {
        eosio_assert(until > placed_at, "E404|End of temporary transfer must be in the future");
        type = TRANSFER_TYPE_ASK_RENT; // temporary transfer
    } else {
        type = TRANSFER_TYPE_ASK; // indefinite transfer
    }

    if (itr_user_pet != idx_existent_offer.end()) {
        auto offer = *itr_user_pet;

        eosio_assert(offer.type != TRANSFER_TYPE_RENTING, "E404|offer can't be updated during temporary transfers");

        offers.modify(*itr_user_pet, pet.owner, [&](auto &r) {
            r.value = amount;
            r.new_owner = new_owner;
            r.type = type;
            r.placed_at = placed_at;
            r.transfer_ends_at = until;
        });
    } else {
        offers.emplace(pet.owner, [&](auto& r){
            st_offers offer {
                .id = offers.available_primary_key(),
                .user = pet.owner,
                .new_owner = new_owner,
                .pet_id = pet.id,
                .type = type,
                .value = amount,
                .placed_at = placed_at,
                .ends_at = 0,
                .transfer_ends_at = until};
            r = offer;
        });
    }

    // make sure new_owner exists
    if (new_owner != (const name) {0}) {
        require_recipient(new_owner);
    }

    print("new owner can become ", new_owner);
}

void market::removeoffer(name owner, uuid pet_id) {

    require_auth(owner);

    auto idx_existent_offer = offers.get_index<N(by_user_and_pet)>();
    const auto& offer = idx_existent_offer.get(combine_ids(owner, pet_id), "E404|Invalid offer");

    eosio_assert(offer.user == owner, "E404|offer can only be removed by owner of offer");

    eosio_assert(offer.type != TRANSFER_TYPE_RENTING, "E404|offers can't be removed during temporary transfers");

    offers.erase(offer);
}

void market::claimpet(name old_owner, uuid pet_id, name claimer) {
    require_auth(claimer);

    auto idx_existent_offer = offers.get_index<N(by_user_and_pet)>();
    const auto& offer = idx_existent_offer.get(combine_ids(old_owner, pet_id), "E404|Invalid offer");
    const auto& pet = pets.get(pet_id, "E404|Invalid pet");

    const name new_owner = offer.new_owner;
    eosio_assert(
        claimer == new_owner ||
        new_owner == (const name) {0},
        "E404|Invalid claimer");
    eosio_assert(old_owner == pet.owner, "E404|Pet already transferred");

    eosio_assert(offer.type != TRANSFER_TYPE_RENTING || offer.transfer_ends_at < now(), "E404|Temporary transfer not yet over");
    eosio_assert(offer.value.amount == 0, "E404|Offers requires value transfer");

    // transfer pet
    action(permission_level{_self, N(active)}, N(monstereosio), N(transferpet), std::make_tuple(pet.id, claimer)).send();

    if (offer.transfer_ends_at > 0) {
        if (offer.type == TRANSFER_TYPE_ASK_RENT) {
            offers.modify(offer, 0, [&](auto& r){
                r.user = claimer;
                r.new_owner = old_owner;
                r.value = asset(0); // transfer back is for free
                r.type = TRANSFER_TYPE_RENTING;
            });
            print("offer converter to temporary transfer");
        } else if (offer.type == TRANSFER_TYPE_RENTING) {
            offers.erase(offer);
            print("offer erased.");
        }
    } else {
        offers.erase(offer);
        print("offer erased.");
    }
}

void market::bidpet(uuid pet_id, name bidder, asset amount, uint32_t until = 0) {

    require_auth(bidder);

    const auto& pet = pets.get(pet_id, "E404|Invalid pet");

    eosio_assert(pet.owner != bidder, "bidder must be different than current owner");

    // validate eos
    eosio_assert(amount.symbol == string_to_symbol(4, "EOS"),
    "MonsterEOS only accepts EOS for transfers");
    eosio_assert(amount.is_valid(), "Invalid token transfer");
    eosio_assert(amount.amount >= 0, "amount cannot be negative");

    auto idx_existent_offer = offers.get_index<N(by_user_and_pet)>();
    auto user_pet_id = combine_ids(bidder, pet_id);
    auto itr_user_pet = idx_existent_offer.find(user_pet_id);
    uint32_t placed_at = now();

    transfer_type type;
    if (until > 0) {
        type = TRANSFER_TYPE_BID_RENT; // temporary transfer
    } else {
        type = TRANSFER_TYPE_BID; // indefinite transfer
    }

    if (itr_user_pet != idx_existent_offer.end()) {
        auto offer = *itr_user_pet;

        offers.modify(*itr_user_pet, pet.owner, [&](auto &r) {
            r.value = amount;
            r.placed_at = placed_at;
            r.transfer_ends_at = until;
        });
    } else {
        offers.emplace(bidder, [&](auto& r){
            st_offers offer {
                .id = offers.available_primary_key(),
                .user = bidder,
                .pet_id = pet.id,
                .type = type,
                .value = amount,
                .placed_at = placed_at,
                .ends_at = 0,
                .transfer_ends_at = until};
            r = offer;
        });
    }
}

void market::removebid(name bidder, uuid pet_id) {

    require_auth(bidder);

    auto idx_existent_offer = offers.get_index<N(by_user_and_pet)>();
    const auto& offer = idx_existent_offer.get(combine_ids(bidder, pet_id), "E404|Invalid offer");

    eosio_assert(offer.user == bidder, "E404|bids can only be removed by owner of bid");

    offers.erase(offer);
}

EOSIO_ABI(market, (offerpet)(removeoffer)(claimpet)(bidpet)(removebid))