#include "contracts.hpp"
#include "eosio.system_tester.hpp"

#include <boost/algorithm/string/predicate.hpp>
#include <boost/test/unit_test.hpp>
#include <eosio/chain/abi_serializer.hpp>
#include <eosio/testing/tester.hpp>

#include <Runtime/Runtime.h>

#include <fc/io/json.hpp>
#include <fc/static_variant.hpp>

#ifdef NON_VALIDATING_TEST
#define TESTER tester
#else
#define TESTER validating_tester
#endif

using namespace eosio;
using namespace eosio::chain;
using namespace eosio::testing;
using namespace fc;

inline constexpr auto operator""_n(const char* s, std::size_t) { return string_to_name(s); }

#define CHECK_ASSERT(S, M)                                                                         \
  try {                                                                                            \
    S;                                                                                             \
    BOOST_ERROR("exception eosio_assert_message_exception is expected");                           \
  } catch (eosio_assert_message_exception & e) {                                                   \
    if (e.top_message() != "assertion failure with message: " M)                                   \
      BOOST_ERROR("expected \"assertion failure with message: " M "\" got \"" + e.top_message() +  \
                  "\"");                                                                           \
  }

static const fc::microseconds abi_serializer_max_time{1'000'000};

class monstereosio_tester : public TESTER {
public:
  using TESTER::push_transaction;
  void push_transaction(name signer, const std::string& s) {
    auto v = json::from_string(s);
    outfile << "push_transaction " << json::to_pretty_string(v) << "\n";

    signed_transaction trx;
    for (auto& a : v["actions"].get_array()) {
      variant_object data;
      from_variant(a["data"], data);
      action act;
      act.account       = a["account"].as<name>();
      act.name          = a["name"].as<name>();
      act.authorization = a["authorization"].as<vector<permission_level>>();
      act.data          = abi_ser.variant_to_binary(abi_ser.get_action_type(act.name), data,
                                           abi_serializer_max_time);
      trx.actions.emplace_back(std::move(act));
    }

    try {
      set_transaction_headers(trx);
      trx.sign(get_private_key(signer, "active"), control->get_chain_id());
      push_transaction(trx);
      outfile << "transaction pushed\n";
    } catch (fc::exception& e) {
      outfile << "Exception: " << e.top_message() << "\n";
    }

    // push_transaction example usage:
    //   t.push_transaction("john"_n, R"({
    //       "actions": [{
    //          "account":              "monstereosio",
    //          "name":                 "createpet",
    //          "authorization": [{
    //             "actor":             "john",
    //             "permission":        "active",
    //          }],
    //          "data": {
    //             "owner":          "john",
    //             "pet_name":       "bubble"
    //          },
    //       }]
    //    })");
  }

  void push_trx(string contract, string action, string signer, string data) {
      push_transaction(name{signer}, R"({
          "actions": [{
             "account":              ")" + contract + R"(",
             "name":                 ")" + action + R"(",
             "authorization": [{
                "actor":             ")" + signer + R"(",
                "permission":        "active",
             }],
             "data": )" + data + R"(,
          }]
       })");
  }

  monstereosio_tester(const std::string& test_name)
      : TESTER(), test_name{test_name}, outfile{DATA_DIR + test_name + ".actual"},
        abi{contracts::monstereosio_abi()},
        abi_ser(json::from_string(std::string{abi.data(), abi.data() + abi.size()}).as<abi_def>(),
                abi_serializer_max_time) {

    //   set_code("eosio"_n, contracts::test_bios_wasm());
    //   set_abi("eosio"_n, contracts::test_bios_abi().data());

    create_account("monstereosio"_n);
    set_code("monstereosio"_n, contracts::monstereosio_wasm());
    set_abi("monstereosio"_n, contracts::monstereosio_abi().data());

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,8,8,8,8,8,5,8,8,8}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,8,20,15,10,5,10,10,8,8}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,5,8,20,15,10,10,10,8,8}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,10,5,8,20,15,10,10,8,5}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,15,10,5,8,20,10,10,8,8}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,20,15,10,5,8,10,10,8,8}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{15,10,10,10,10,10,8,5,8,8}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,10,10,10,10,10,20,8,8,8}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{12,12,12,12,12,12,12,12,12,5}));

    push_action(N(monstereosio), N(addelemttype), N(monstereosio),
                mvo()("ratios", std::vector<uint8_t>{8,10,10,20,10,10,10,10,20,20}));

    produce_blocks();

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,4}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,9}));

    produce_blocks();

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,3}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,4}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,2}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,1}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,7}));

    produce_blocks();

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,3}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,2}));

    push_action(N(monstereosio), N(addpettype), N(monstereosio),
                mvo()("elements", std::vector<uint8_t>{0,6,9}));
  }

  struct row {
    uint64_t primary_key;
    bytes    value;
  };

  auto get_table(name account, name scope, name table) {
    std::vector<row> rows;
    const auto&      db = control->db();
    const auto*      tbl =
        db.find<table_id_object, by_code_scope_table>(boost::make_tuple(account, scope, table));
    if (!tbl)
      return rows;
    auto& idx = db.get_index<key_value_index, by_scope_primary>();
    for (auto it = idx.lower_bound(std::make_tuple(tbl->id, 0));
         it != idx.end() && it->t_id == tbl->id; ++it)
      rows.push_back(row{it->primary_key, bytes{it->value.begin(), it->value.end()}});
    return rows;
  }

  void diff_table(name account, name scope, name table, const std::string& type,
                  std::vector<row>& existing) {
    outfile << "table: " << account << " " << scope << " " << table << "\n";
    auto updated = get_table(account, scope, table);

    std::map<uint64_t, std::pair<optional<bytes>, optional<bytes>>> comparison;
    for (auto& x : existing)
      comparison[x.primary_key].first = x.value;
    for (auto& x : updated)
      comparison[x.primary_key].second = x.value;

    auto str = [&](bytes& b) {
      auto s = "\n" +
               json::to_pretty_string(abi_ser.binary_to_variant(type, b, abi_serializer_max_time));
      std::string result;
      for (auto ch : s)
        if (ch == '\n')
          result += "\n        ";
        else
          result += ch;
      return result;
    };

    for (auto& x : comparison) {
      if (!x.second.first)
        outfile << "    add row:" << str(*x.second.second) << "\n";
      else if (!x.second.second)
        outfile << "    del row:" << str(*x.second.first) << "\n";
      else if (*x.second.first != *x.second.second)
        outfile << "    change row:" << str(*x.second.second) << "\n";
    }
    existing = std::move(updated);
  }

  struct table {
    name             account;
    name             scope;
    name             table;
    std::string      type;
    std::vector<row> rows;
  };

  void diff_table(table& t) { diff_table(t.account, t.scope, t.table, t.type, t.rows); }

  void heading(const std::string& s) { outfile << "\n" << s << "\n=========================\n"; }

  void check_file() {
    outfile.close();
    if (write_mode)
      BOOST_REQUIRE_EQUAL(
          0, system(("cp " DATA_DIR + test_name + ".actual " DATA_DIR + test_name + ".expected")
                        .c_str()));
    else
      BOOST_REQUIRE_EQUAL(0, system(("colordiff " DATA_DIR + test_name + ".expected " DATA_DIR +
                                     test_name + ".actual")
                                        .c_str()));
  }

  std::string           test_name;
  mutable std::ofstream outfile;
  std::vector<char>     abi;
  abi_serializer        abi_ser;
};

BOOST_AUTO_TEST_SUITE(monstereosio)

// BOOST_AUTO_TEST_CASE(pet_creations_and_interactions) try {
//   monstereosio_tester        t{"pet_creations_and_interactions"};
//   monstereosio_tester::table pets{"monstereosio"_n, "monstereosio"_n, "pets"_n, "st_pets"};

//   t.create_account("john"_n);
//   t.create_account("mary"_n);

//   t.heading("createpet: success bubble");
//   t.push_trx("monstereosio", "createpet", "john",
//     R"({"pet_name": "bubble", "owner": "john"})");
//   t.diff_table(pets);
//   t.produce_blocks();

//   t.heading("createpet: missing authority");
//   t.push_trx("monstereosio", "createpet", "mary",
//     R"({"pet_name": "ooopps", "owner": "john"})");
//   t.diff_table(pets);
//   t.produce_blocks();

//   t.heading("createpet: too fast tolerance exception");
//   t.push_trx("monstereosio", "createpet", "john",
//     R"({"pet_name": "second", "owner": "john"})");
//   t.diff_table(pets);

//   // produce for 30 minutes
//   t.produce_blocks(120 * 30);
//   t.heading("createpet: too fast tolerance 30 minutes");
//   t.push_trx("monstereosio", "createpet", "john",
//     R"({"pet_name": "second", "owner": "john"})");
//   t.diff_table(pets);

//   // produce for 30+ minutes
//   t.produce_blocks(120 * 32);
//   t.heading("createpet: 1h tolerance recreation accepted");
//   t.push_trx("monstereosio", "createpet", "john",
//     R"({"pet_name": "second", "owner": "john"})");
//   t.diff_table(pets);

//   // attempt to feed them
//   t.heading("feed first pet after 1 hour");
//   t.push_trx("monstereosio", "feedpet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.heading("feed/bed/wake second pet immediately");
//   t.push_trx("monstereosio", "feedpet", "john",
//     R"({"pet_id": 2})");
//   t.diff_table(pets);
//   t.produce_blocks();
//   t.push_trx("monstereosio", "bedpet", "john",
//     R"({"pet_id": 2})");
//   t.diff_table(pets);
//   t.produce_blocks();
//   t.push_trx("monstereosio", "awakepet", "john",
//     R"({"pet_id": 2})");
//   t.diff_table(pets);

//   t.produce_blocks(120 * 70 * 2);
//   t.heading("feed first pet after 4 hours");
//   t.push_trx("monstereosio", "feedpet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.heading("bed first pet after 4 hours");
//   t.push_trx("monstereosio", "awakepet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.produce_blocks(120 * 60 * 4);
//   t.heading("feed and bed first pet after 8 hours");
//   t.push_trx("monstereosio", "feedpet", "john",
//     R"({"pet_id": 1})");
//   t.push_trx("monstereosio", "bedpet", "john",
//     R"({"pet_id": 1})");
//   t.produce_blocks();

//   t.heading("attempt to duplicate sleep pet");
//   t.push_trx("monstereosio", "bedpet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.heading("immediate awake pet");
//   t.push_trx("monstereosio", "awakepet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.heading("test pet is alive after 24h with no food");
//   t.produce_blocks(120 * 60 * 24);
//   t.push_trx("monstereosio", "awakepet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.heading("test pet is alive after 48h with no food");
//   t.produce_blocks(120 * 60 * 24);
//   t.push_trx("monstereosio", "bedpet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.heading("test pet is alive before 72h with no food");
//   t.produce_blocks(120 * 60 * 23);
//   t.push_trx("monstereosio", "awakepet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.heading("test pet is dead after 72h with no food");
//   t.produce_blocks(120 * 60);
//   t.push_trx("monstereosio", "feedpet", "john",
//     R"({"pet_id": 1})");
//   t.diff_table(pets);

//   t.check_file();
// } FC_LOG_AND_RETHROW()

BOOST_AUTO_TEST_CASE(battles) try {
  monstereosio_tester        t{"battles"};
  monstereosio_tester::table pets{"monstereosio"_n, "monstereosio"_n, "pets"_n, "st_pets"};
  monstereosio_tester::table battles{"monstereosio"_n, "monstereosio"_n, "battles"_n, "st_battle"};

  t.create_account("john"_n);
  t.create_account("mary"_n);

  t.heading("createpet: success pet creations");
  t.push_trx("monstereosio", "createpet", "john",
    R"({"pet_name": "pikachu", "owner": "john"})");
  t.push_trx("monstereosio", "createpet", "mary",
  R"({"pet_name": "bulbasaur", "owner": "john"})");
  t.diff_table(pets);
  t.produce_blocks();

  t.heading("create and join battle");
  t.push_trx("monstereosio", "battlecreate", "john",
    R"({"host": "john", "mode": 1, "secret": "12313131"})");
  t.push_trx("monstereosio", "battlejoin", "mary",
  R"({"host": "john", "player": "mary", "secret": "john"})");
  t.diff_table(pets);
  t.produce_blocks();

  // pet id: 1
  // randoms: 200, 199, 89, 69, 10, 248, 69, 159, 108, 138, 197, 99, 233, 72, 139, 144, 182, 115, 158, 192, 181, 217, 197, 97, 24, 99, 254, 203, 93, 165, 124, 130
  // secret: ffb50ca56fd78baa1c93606fd3996d92a326bfbbcedf88ef7e554514919b0e09

  // pet id: 2
  // randoms: 20, 83, 233, 196, 69, 118, 131, 26, 134, 179, 171, 31, 109, 111, 173, 142, 58, 184, 99, 89, 252, 200, 85, 39, 0, 220, 89, 63, 148, 20, 106, 103
  // secret: fc4bc8f4432e124294aba8c2ac964f8fb499ac372bd9c2720f61254cbef2960f

} FC_LOG_AND_RETHROW()

BOOST_AUTO_TEST_SUITE_END()
