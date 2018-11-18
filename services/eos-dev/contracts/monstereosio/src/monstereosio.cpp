#include "pet.cpp"

#define DISPATCH_ACTION(TYPE, MEMBERS)                                                                \
  extern "C" {                                                                                     \
  void apply(uint64_t receiver, uint64_t code, uint64_t action) {                                  \
    if (action == "onerror"_n) {                                                                    \
      /* onerror is only valid if it is for the "eosio" code account and authorized by "eosio"'s   \
       * "active permission */                                                                     \
      eosio_assert(code == "eosio"_n,                                                               \
                   "onerror action's are only valid from the \"eosio\" system account");           \
    }                                                                                              \
    auto self = receiver;                                                                          \
                                                                                                   \
    bool valid_internal_actions = code == self &&                                                  \
      action != "transfer"_n;     /* put all external actions separated by && */                    \
                                                                                                   \
    if (valid_internal_actions || code == "eosio.token"_n || action == "onerror"_n) {                \
      TYPE thiscontract(self);                                                                     \
      switch (action) { EOSIO_API(TYPE, MEMBERS) }                                                 \
      /* does not allow destructor of thiscontract to run: eosio_exit(0); */                       \
    }                                                                                              \
  }                                                                                                \
  }

EOSIO_DISPATCH(pet,
  // pet core
  (createpet)
  (feedpet)
  (bedpet)
  (awakepet)
  (destroypet)
  (transferpet)

  // battles
  // (battlecreate)
  // (battlejoin)
  // (battlestart)
  (quickbattle)
  (battleleave)
  (battleattack)
  (battlefinish)
  (battlepfdel)
  (claimskill)

  // market
  (orderask)
  (removeask)
  (claimpet)
  (bidpet)
  (removebid)

  // admins and config setup
  (setelemttype)
  (setpettype)
  (setequiptype)
  (changecrtol)
  (changebatma)
  (changebatidt)
  (changebatami)
  (changebatama)
  (techrevive)
  (changemktfee)
  (changecreawk)
  (changehungtz)

  // rewards
  (signup)
  (openchest)
  (chestreward)
  (issueitem)
  (issueequip)
  (issueitems)
  (petconsume)
  (petequip)
  (petunequip)

  // EXTERNAL ACTIONS - VALIDATE ABOVE:  deposits
  (transfer)
)
