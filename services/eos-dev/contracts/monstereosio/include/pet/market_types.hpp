#include <pet/types.hpp>

using namespace eosio;
using namespace types;

namespace market_types {

typedef uint8_t      order_type;
constexpr order_type ORDER_TYPE_ASK      = 1;
constexpr order_type ORDER_TYPE_BID      = 2;
constexpr order_type ORDER_TYPE_ASK_RENT = 11;
constexpr order_type ORDER_TYPE_BID_RENT = 12;
constexpr order_type ORDER_TYPE_RENTING  = 10;

struct st_transfer {
  name   from;
  name   to;
  asset  quantity;
  string memo;
};

struct [[ eosio::table("orders"), eosio::contract("monstereosio") ]] st_orders {
  uuid       id;
  name       user;
  order_type type;
  uuid       pet_id;
  name       new_owner;
  asset      value;
  uint32_t   placed_at;
  uint32_t   ends_at;
  uint32_t   transfer_ends_at;

  uint64_t  primary_key() const { return id; }
  uint128_t get_by_user_and_pet() const { return utils::combine_ids(user.value, pet_id); }

  EOSLIB_SERIALIZE(st_orders,
                   (id)(user)(type)(pet_id)(new_owner)(value)(placed_at)(ends_at)(transfer_ends_at))
};

typedef multi_index<"orders"_n, st_orders,
                    indexed_by<"byuserandpet"_n, const_mem_fun<st_orders, uint128_t,
                                                               &st_orders::get_by_user_and_pet>>>
    _tb_orders;

} // namespace market_types