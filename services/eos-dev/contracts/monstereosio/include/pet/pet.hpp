/**
 * Pet-Tamagotchi-Alike Smart Contract
 *
 * The idea is to copy the original tamagotchi to the chain :)
 *
 *
 * @author Leo Ribeiro
 */
#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/crypto.h>
#include <eosiolib/transaction.hpp>
#include <eosiolib/singleton.hpp>
#include <math.h>
#include <vector>
#include <map>
#include <pet/utils.hpp>
#include <pet/types.hpp>
#include <pet/item_types.hpp>
#include <pet/account_types.hpp>
#include <pet/pet_types.hpp>
#include <pet/effect_types.hpp>
#include <pet/battle_types.hpp>
#include <pet/market_types.hpp>

using namespace eosio;
using namespace types;
using namespace item_types;
using namespace account_types;
using namespace pet_types;
using namespace effect_types;
using namespace battle_types;
using namespace market_types;
using std::string;
using std::hash;

/* ****************************************** */
/* ------------ Contract Definition --------- */
/* ****************************************** */

class [[eosio::contract("monstereosio")]] pet : public contract {
public:
    using contract::contract;

    pet(name receiver, name code, datastream<const char*> ds)
    :contract(receiver, code, ds),
    pettypes(receiver, receiver.value),
    elements(receiver, receiver.value),
    equiptypes(receiver, receiver.value),
    equipments(receiver, receiver.value),
    pets(receiver, receiver.value),
    peteffects(receiver, receiver.value),
    orders(receiver, receiver.value),
    petinbattles(receiver, receiver.value),
    plsinbattles(receiver, receiver.value),
    seed(receiver, receiver.value),
    accounts2(receiver, receiver.value),
    pet_config2(receiver, receiver.value)
    {}

    _tb_pet_types pettypes;
    _tb_elements  elements;
    _tb_equiptypes  equiptypes;
    _tb_equipments  equipments;
    _tb_pet pets;
    _tb_orders orders;
    _tb_pet_in_battle petinbattles;
    _tb_player_in_battle plsinbattles;
    _tb_peteffects peteffects;
    _tb_seed seed;
    _tb_accounts2 accounts2;
    pet_config2_singleton pet_config2;

    // pet interactions
    ACTION createpet    ( name owner, string pet_name );
    ACTION feedpet      ( uuid pet_id );
    ACTION bedpet       ( uuid pet_id );
    ACTION awakepet     ( uuid pet_id );
    ACTION destroypet   ( uuid pet_id );
    ACTION transferpet  ( uuid pet_id, name new_owner);
    ACTION claimskill   ( uuid pet_id, uint8_t skill );

    // battle interface
    ACTION battleleave  ( name host, name player );
    ACTION quickbattle  ( battle_mode mode, name player, st_pick picks );
    ACTION battlemove ( name host, name player, vector<st_battle_move> moves, st_battle_item item );
    ACTION battlefinish ( name host, name winner );
    ACTION battlepfdel  ( uuid pet_id, string reason );

    // market interface
    ACTION orderask(uuid pet_id, name new_owner, asset amount, uint32_t until);
    ACTION removeask(name owner, uuid pet_id);
    ACTION claimpet(name old_owner, uuid pet_id, name claimer);
    ACTION bidpet(uuid pet_id, name bidder, asset amount, uint32_t until);
    ACTION removebid(name bidder, uuid pet_id);

    // admin/config interactions
    ACTION setelemttype ( uint64_t id, vector<uint8_t> ratios );
    ACTION setpettype   ( uint64_t id, vector<uint8_t> elements );
    ACTION setequiptype ( uuid id, equipment_type type, uint16_t attack, uint16_t defense, uint16_t hp );
    ACTION changecrtol  ( uint32_t new_interval );
    ACTION changebatma  ( uint16_t new_max_arenas );
    ACTION changebatidt ( uint32_t new_idle_tolerance );
    ACTION changebatami ( uint8_t new_attack_min_factor );
    ACTION changebatama ( uint8_t new_attack_max_factor );
    ACTION techrevive   ( uuid pet_id, string reason );
    ACTION changemktfee ( uint64_t new_fee, string reason );
    ACTION changecreawk ( int64_t new_creation_awake, string reason );
    ACTION changehungtz ( uint32_t new_hunger_to_zero, string reason );

    // token deposits
    ACTION signup       ( name user );

    void transfer     ( uint64_t sender, uint64_t receiver );

    // items
    ACTION openchest    ( name player );
    ACTION petconsume   ( uuid pet_id, symbol item );
    ACTION issueitem    ( name player, asset item, string reason );
    ACTION issueequip   ( name player, uuid itemtype, string reason );
    ACTION issueitems   ( name player, vector<asset> items, string reason );
    ACTION chestreward  ( name owner, uint8_t modifier, string reason );
    ACTION petequip     ( uuid pet_id, uuid item_id );
    ACTION petunequip   ( uuid item_id );

    private:

    /* ****************************************** */
    /* ------------ Private Functions ----------- */
    /* ****************************************** */

    // internal config accessers
    st_pet_config2 _get_pet_config();
    void _update_pet_config(const st_pet_config2 &pc);
    uuid _next_id();

    // generate pseudo random seeds
    int _random(const int num);

    // internal pet calcs
    bool _is_element_valid(const uint8_t &pet_type, const element_type &element_id);
    bool _is_alive(st_pets &pet, const st_pet_config2 &pc);
    uint32_t _calc_hunger_hp(const uint8_t &max_hunger_points,
                             const uint32_t &hunger_to_zero,
                             const uint8_t &hunger_hp_modifier,
                             const uint32_t &last_fed_at,
                             const uint32_t &current_time);

    // pet transfers
    void _transfer_value (name receiver, asset quantity, string memo);
    void _handle_transf  (string memo, asset quantity, name from);
    // void _transfer_pet   ( uuid pet_id, name new_owner);


    // battle helpers
    void _battle_add_pets(st_battle &battle, name player, vector<uint64_t> pet_ids, const st_pet_config2 &pc);

};
