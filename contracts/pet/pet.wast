(module
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$vijji (func (param i32 i64 i64 i32)))
 (type $FUNCSIG$vijj (func (param i32 i64 i64)))
 (type $FUNCSIG$vijjj (func (param i32 i64 i64 i64)))
 (type $FUNCSIG$vijjjji (func (param i32 i64 i64 i64 i64 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$ijjjji (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $FUNCSIG$ijjjij (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "assert_sha256" (func $assert_sha256 (param i32 i32 i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_lowerbound" (func $db_idx64_lowerbound (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx64_next" (func $db_idx64_next (param i32 i32) (result i32)))
 (import "env" "db_idx64_remove" (func $db_idx64_remove (param i32)))
 (import "env" "db_idx64_store" (func $db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_update" (func $db_idx64_update (param i32 i64 i32)))
 (import "env" "db_next_i64" (func $db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $db_remove_i64 (param i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $memmove (param i32 i32 i32) (result i32)))
 (import "env" "memset" (func $memset (param i32 i32 i32) (result i32)))
 (import "env" "printi" (func $printi (param i64)))
 (import "env" "printn" (func $printn (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "prints_l" (func $prints_l (param i32 i32)))
 (import "env" "printui" (func $printui (param i64)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (import "env" "send_inline" (func $send_inline (param i32 i32)))
 (import "env" "sha256" (func $sha256 (param i32 i32 i32)))
 (table 24 24 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN3pet12changebatamaEh $_ZN3pet12battlefinishEN5eosio4nameES1_ $_ZN3pet12changepettypEyNSt3__16vectorIhNS0_9allocatorIhEEEE $_ZN3pet8awakepetEy $_ZN3pet11changebatmaEt $_ZN3pet12battleselpetEN5eosio4nameES1_y $_ZN3pet9createpetEN5eosio4nameENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE $_ZN3pet9updatepetEy $_ZN3pet11battlestartEN5eosio4nameES1_11checksum256 $_ZN3pet6bedpetEy $_ZN3pet12battleattackEN5eosio4nameES1_yyh $_ZN3pet12battlecreateEN5eosio4nameEh11checksum256 $_ZN3pet11changecrtolEm $_ZN3pet12changeelemttEyNSt3__16vectorIhNS0_9allocatorIhEEEE $_ZN3pet12addelemttypeENSt3__16vectorIhNS0_9allocatorIhEEEE $_ZN3pet10addpettypeENSt3__16vectorIhNS0_9allocatorIhEEEE $_ZN3pet12changebatamiEh $_ZN3pet12changebatidtEm $_ZN3pet10battlejoinEN5eosio4nameES1_11checksum256 $_ZN3pet11battleleaveEN5eosio4nameES1_ $_ZN3pet7feedpetEy $_ZN3pet10destroypetEy $_ZN3pet8transferEyy)
 (memory $0 1)
 (data (i32.const 4) "\b0m\00\00")
 (data (i32.const 16) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 80) "cannot pass end iterator to modify\00")
 (data (i32.const 128) "cannot create objects in table of another contract\00")
 (data (i32.const 192) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 256) "invalid symbol name\00")
 (data (i32.const 288) "write\00")
 (data (i32.const 304) "object passed to modify is not in multi_index\00")
 (data (i32.const 352) "cannot modify objects in table of another contract\00")
 (data (i32.const 416) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 480) "error reading iterator\00")
 (data (i32.const 512) "read\00")
 (data (i32.const 528) "singleton does not exist\00")
 (data (i32.const 560) "cannot pass end iterator to erase\00")
 (data (i32.const 608) "cannot increment end iterator\00")
 (data (i32.const 640) "object passed to erase is not in multi_index\00")
 (data (i32.const 688) "cannot erase objects in table of another contract\00")
 (data (i32.const 752) "attempt to remove object that was not in multi_index\00")
 (data (i32.const 816) "each type must have at least 1 ratio\00")
 (data (i32.const 864) "E404|Invalid element\00")
 (data (i32.const 896) "get\00")
 (data (i32.const 912) "each type must have at least 1 element\00")
 (data (i32.const 960) "E404|Invalid pet type\00")
 (data (i32.const 992) "you already host a battle!\00")
 (data (i32.const 1024) "invalid battle mode\00")
 (data (i32.const 1056) "all arenas are busy\00")
 (data (i32.const 1088) "active\00")
 (data (i32.const 1104) "battle not found for current host\00")
 (data (i32.const 1152) "player is already in this battle\00")
 (data (i32.const 1200) "battle is already full of players\00")
 (data (i32.const 1248) "battle already started\00")
 (data (i32.const 1280) "player not in this battle\00")
 (data (i32.const 1312) "battle has not enough players\00")
 (data (i32.const 1344) "invalid reveal\00")
 (data (i32.const 1360) "commit was already revealed\00")
 (data (i32.const 1392) "all pets were selected already\00")
 (data (i32.const 1424) "its not your turn\00")
 (data (i32.const 1456) "E404|Invalid pet\00")
 (data (i32.const 1488) "dead pets don\'t battle\00")
 (data (i32.const 1520) "sleeping pets don\'t battle\00")
 (data (i32.const 1552) "pet is already in another battle\00")
 (data (i32.const 1600) "invalid attack\00")
 (data (i32.const 1616) "invalid pet type\00")
 (data (i32.const 1648) "you cannot control this monster\00")
 (data (i32.const 1680) "this monster is dead\00")
 (data (i32.const 1712) "invalid attack element\00")
 (data (i32.const 1744) "invalid element\00")
 (data (i32.const 1760) "invalid pet enemy type\00")
 (data (i32.const 1792) "\nattack results ====\nattack damage: \00")
 (data (i32.const 1840) "\nelement ratio: \00")
 (data (i32.const 1872) "\nattack factor: \00")
 (data (i32.const 1904) "\npet: \00")
 (data (i32.const 1920) " - hp: \00")
 (data (i32.const 1936) " and the winner is >>> \00")
 (data (i32.const 1968) "E404|Invalid pet battle stat\00")
 (data (i32.const 2000) "name must have at least 1 character\00")
 (data (i32.const 2048) "name cannot exceed 20 chars\00")
 (data (i32.const 2080) "name cannot be composed of spaces only\00")
 (data (i32.const 2128) "\nlast created pet at: \00")
 (data (i32.const 2160) "You can\'t create another pet now\00")
 (data (i32.const 2208) "| updating pet \00")
 (data (i32.const 2224) "E099|Pet is dead.\00")
 (data (i32.const 2256) "\npet hungry_points=\00")
 (data (i32.const 2288) "\npet hungry_seconds=\00")
 (data (i32.const 2320) "\npet hp=\00")
 (data (i32.const 2336) "\npet effect_hp_hunger=\00")
 (data (i32.const 2368) "E404|Invalid pet, destroying action is unrecoverable\00")
 (data (i32.const 2432) "I111|Zzzzzzzz...\00")
 (data (i32.const 2464) "I110|Not hungry\00")
 (data (i32.const 2480) "I199|Dead don\'t feed\00")
 (data (i32.const 2512) "I201|Not now sir!\00")
 (data (i32.const 2544) "I299|Dead don\'t sleep\00")
 (data (i32.const 2576) "I301|Zzzzzzz\00")
 (data (i32.const 2592) "I399|Dead don\'t awake\00")
 (data (i32.const 2624) "\n>>> sender >>>\00")
 (data (i32.const 2640) " - name: \00")
 (data (i32.const 2656) "\n>>> receiver >>>\00")
 (data (i32.const 2688) "\n>>> transfer data quantity >>> \00")
 (data (i32.const 2736) "Invalid token transfer\00")
 (data (i32.const 2768) "Quantity must be positive\00")
 (data (i32.const 2800) "attempt to add asset with different symbol\00")
 (data (i32.const 2848) "addition underflow\00")
 (data (i32.const 2880) "addition overflow\00")
 (data (i32.const 2912) "\n\00")
 (data (i32.const 2928) " deposited:       \00")
 (data (i32.const 2960) " funds available: \00")
 (data (i32.const 2992) "MonsterEOS only accepts EOS for deposits\00")
 (data (i32.const 3040) ".\00")
 (data (i32.const 3056) " \00")
 (data (i32.const 3072) ",\00")
 (data (i32.const 3088) "onerror\00")
 (data (i32.const 3104) "eosio\00")
 (data (i32.const 3120) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 3184) "eosio.token\00")
 (data (i32.const 11600) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "_ZN5utils12count_spacesENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN5utils12count_spacesENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "_ZN5utils7is_zeroERK11checksum256" (func $_ZN5utils7is_zeroERK11checksum256))
 (export "_ZN5utils8hash_strERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN5utils8hash_strERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "_ZN3pet11changecrtolEm" (func $_ZN3pet11changecrtolEm))
 (export "_ZN3pet15_get_pet_configEv" (func $_ZN3pet15_get_pet_configEv))
 (export "_ZN3pet18_update_pet_configERKNS_14st_pet_config2E" (func $_ZN3pet18_update_pet_configERKNS_14st_pet_config2E))
 (export "_ZN3pet11changebatmaEt" (func $_ZN3pet11changebatmaEt))
 (export "_ZN3pet12changebatidtEm" (func $_ZN3pet12changebatidtEm))
 (export "_ZN3pet12changebatamiEh" (func $_ZN3pet12changebatamiEh))
 (export "_ZN3pet12changebatamaEh" (func $_ZN3pet12changebatamaEh))
 (export "_ZN3pet12addelemttypeENSt3__16vectorIhNS0_9allocatorIhEEEE" (func $_ZN3pet12addelemttypeENSt3__16vectorIhNS0_9allocatorIhEEEE))
 (export "_ZN3pet12changeelemttEyNSt3__16vectorIhNS0_9allocatorIhEEEE" (func $_ZN3pet12changeelemttEyNSt3__16vectorIhNS0_9allocatorIhEEEE))
 (export "_ZN3pet10addpettypeENSt3__16vectorIhNS0_9allocatorIhEEEE" (func $_ZN3pet10addpettypeENSt3__16vectorIhNS0_9allocatorIhEEEE))
 (export "_ZN3pet12changepettypEyNSt3__16vectorIhNS0_9allocatorIhEEEE" (func $_ZN3pet12changepettypEyNSt3__16vectorIhNS0_9allocatorIhEEEE))
 (export "_ZN3pet8_next_idEv" (func $_ZN3pet8_next_idEv))
 (export "_ZN3pet16_next_element_idEv" (func $_ZN3pet16_next_element_idEv))
 (export "_ZN3pet17_next_pet_type_idEv" (func $_ZN3pet17_next_pet_type_idEv))
 (export "_ZN3pet12battlecreateEN5eosio4nameEh11checksum256" (func $_ZN3pet12battlecreateEN5eosio4nameEh11checksum256))
 (export "_ZN3pet10battlejoinEN5eosio4nameES1_11checksum256" (func $_ZN3pet10battlejoinEN5eosio4nameES1_11checksum256))
 (export "_ZN3pet11battleleaveEN5eosio4nameES1_" (func $_ZN3pet11battleleaveEN5eosio4nameES1_))
 (export "_ZN3pet11battlestartEN5eosio4nameES1_11checksum256" (func $_ZN3pet11battlestartEN5eosio4nameES1_11checksum256))
 (export "_ZN3pet12battleselpetEN5eosio4nameES1_y" (func $_ZN3pet12battleselpetEN5eosio4nameES1_y))
 (export "_ZN3pet12battleattackEN5eosio4nameES1_yyh" (func $_ZN3pet12battleattackEN5eosio4nameES1_yyh))
 (export "_ZN3pet12battlefinishEN5eosio4nameES1_" (func $_ZN3pet12battlefinishEN5eosio4nameES1_))
 (export "_ZN3pet9createpetEN5eosio4nameENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE" (func $_ZN3pet9createpetEN5eosio4nameENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE))
 (export "_ZN3pet9updatepetEy" (func $_ZN3pet9updatepetEy))
 (export "_ZN3pet7_updateERN5types7st_petsE" (func $_ZN3pet7_updateERN5types7st_petsE))
 (export "_ZN3pet10destroypetEy" (func $_ZN3pet10destroypetEy))
 (export "_ZN3pet7feedpetEy" (func $_ZN3pet7feedpetEy))
 (export "_ZN3pet6bedpetEy" (func $_ZN3pet6bedpetEy))
 (export "_ZN3pet8awakepetEy" (func $_ZN3pet8awakepetEy))
 (export "_ZN3pet8transferEyy" (func $_ZN3pet8transferEyy))
 (export "_ZN3pet15_calc_hunger_hpERKhRKmS1_S3_S3_" (func $_ZN3pet15_calc_hunger_hpERKhRKmS1_S3_S3_))
 (export "apply" (func $apply))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "isspace" (func $isspace))
 (export "memcmp" (func $memcmp))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $_ZN5utils12count_spacesENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (loop $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (tee_local $2
        (i32.and
         (tee_local $7
          (i32.load8_u
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $6)
        (i32.shr_u
         (get_local $7)
         (i32.const 1)
        )
       )
      )
      (br $label$0)
     )
     (br_if $label$0
      (i32.ge_u
       (get_local $6)
       (i32.load
        (get_local $3)
       )
      )
     )
    )
    (set_local $7
     (get_local $1)
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (get_local $2)
      )
     )
     (set_local $7
      (i32.load
       (get_local $4)
      )
     )
    )
    (set_local $5
     (i32.add
      (i32.ne
       (call $isspace
        (i32.load8_s
         (i32.add
          (get_local $7)
          (get_local $6)
         )
        )
       )
       (i32.const 0)
      )
      (get_local $5)
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $label$1)
   )
  )
  (get_local $5)
 )
 (func $_ZN5utils7is_zeroERK11checksum256 (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (i64.load
      (get_local $0)
     )
     (i64.const 0)
    )
   )
   (br_if $label$0
    (i64.ne
     (i64.load offset=8
      (get_local $0)
     )
     (i64.const 0)
    )
   )
   (br_if $label$0
    (i64.ne
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const 0)
    )
   )
   (set_local $1
    (i64.eqz
     (i64.load offset=24
      (get_local $0)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $_ZN5utils8hash_strERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $5
   (select
    (i32.load offset=8
     (get_local $0)
    )
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
    (tee_local $3
     (i32.and
      (tee_local $2
       (i32.load8_u
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.lt_u
        (tee_local $3
         (select
          (i32.load offset=4
           (get_local $0)
          )
          (i32.shr_u
           (get_local $2)
           (i32.const 1)
          )
          (get_local $3)
         )
        )
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $3)
        (i32.const -4)
       )
      )
      (set_local $0
       (get_local $5)
      )
      (set_local $2
       (get_local $3)
      )
      (loop $label$4
       (drop
        (call $memcpy
         (i32.add
          (get_local $6)
          (i32.const 12)
         )
         (get_local $0)
         (i32.const 4)
        )
       )
       (set_local $2
        (i32.xor
         (i32.mul
          (i32.xor
           (i32.shr_u
            (tee_local $4
             (i32.mul
              (i32.load offset=12
               (get_local $6)
              )
              (i32.const 1540483477)
             )
            )
            (i32.const 24)
           )
           (get_local $4)
          )
          (i32.const 1540483477)
         )
         (i32.mul
          (get_local $2)
          (i32.const 1540483477)
         )
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (br_if $label$4
        (i32.gt_u
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const -4)
          )
         )
         (i32.const 3)
        )
       )
      )
      (set_local $5
       (i32.add
        (i32.add
         (get_local $5)
         (tee_local $0
          (i32.and
           (get_local $1)
           (i32.const -4)
          )
         )
        )
        (i32.const 4)
       )
      )
      (br_if $label$2
       (i32.ne
        (tee_local $3
         (i32.sub
          (get_local $1)
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (br $label$1)
     )
     (set_local $2
      (get_local $3)
     )
     (br_if $label$1
      (i32.eq
       (get_local $3)
       (i32.const 1)
      )
     )
    )
    (block $label$5
     (br_if $label$5
      (i32.eq
       (get_local $3)
       (i32.const 2)
      )
     )
     (br_if $label$0
      (i32.ne
       (get_local $3)
       (i32.const 3)
      )
     )
     (set_local $2
      (i32.xor
       (i32.shl
        (i32.load8_u offset=2
         (get_local $5)
        )
        (i32.const 16)
       )
       (get_local $2)
      )
     )
    )
    (set_local $2
     (i32.xor
      (i32.shl
       (i32.load8_u offset=1
        (get_local $5)
       )
       (i32.const 8)
      )
      (get_local $2)
     )
    )
   )
   (set_local $2
    (i32.mul
     (i32.xor
      (i32.load8_u
       (get_local $5)
      )
      (get_local $2)
     )
     (i32.const 1540483477)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
  )
  (i64.extend_u/i32
   (i32.xor
    (i32.shr_u
     (tee_local $0
      (i32.mul
       (i32.xor
        (i32.shr_u
         (get_local $2)
         (i32.const 13)
        )
        (get_local $2)
       )
       (i32.const 1540483477)
      )
     )
     (i32.const 15)
    )
    (get_local $0)
   )
  )
 )
 (func $_ZN3pet11changecrtolEm (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store offset=56
   (get_local $2)
   (get_local $1)
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet15_get_pet_configEv (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $15
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $12
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
   )
   (i64.const 1397703940)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 192)
  )
  (set_local $11
   (i64.shr_u
    (i64.load
     (get_local $12)
    )
    (i64.const 8)
   )
  )
  (set_local $12
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $11)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $11
          (i64.shr_u
           (get_local $11)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $11
           (i64.shr_u
            (get_local $11)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $12
          (i32.add
           (get_local $12)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $13
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $12
        (i32.add
         (get_local $12)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $13
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $13)
   (i32.const 256)
  )
  (i32.store8 offset=24
   (get_local $0)
   (i32.const 100)
  )
  (i64.store offset=28 align=4
   (get_local $0)
   (i64.const 46385646832800)
  )
  (i32.store8 offset=36
   (get_local $0)
   (i32.const 100)
  )
  (i32.store8 offset=37
   (get_local $0)
   (i32.const 1)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 61847529091200)
  )
  (i32.store offset=48
   (get_local $0)
   (i32.const 3600)
  )
  (i32.store offset=52
   (get_local $0)
   (i32.const 60)
  )
  (i32.store8 offset=56
   (get_local $0)
   (i32.const 20)
  )
  (i32.store8 offset=57
   (get_local $0)
   (i32.const 28)
  )
  (i32.store16 offset=58
   (get_local $0)
   (i32.const 10)
  )
  (i32.store16 offset=60
   (get_local $0)
   (i32.const 0)
  )
  (i32.store16 offset=62
   (get_local $0)
   (i32.const 0)
  )
  (i32.store16 offset=64
   (get_local $0)
   (i32.const 0)
  )
  (set_local $13
   (i32.add
    (get_local $1)
    (i32.const 208)
   )
  )
  (block $label$5
   (block $label$6
    (block $label$7
     (block $label$8
      (block $label$9
       (block $label$10
        (block $label$11
         (block $label$12
          (block $label$13
           (br_if $label$13
            (i32.eq
             (tee_local $12
              (i32.load
               (i32.add
                (get_local $1)
                (i32.const 236)
               )
              )
             )
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 232)
              )
             )
            )
           )
           (call $eosio_assert
            (i32.eq
             (i32.load offset=72
              (tee_local $12
               (i32.load
                (i32.add
                 (get_local $12)
                 (i32.const -24)
                )
               )
              )
             )
             (get_local $13)
            )
            (i32.const 16)
           )
           (br_if $label$12
            (get_local $12)
           )
           (br $label$11)
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $12
             (call $db_find_i64
              (i64.load
               (get_local $13)
              )
              (i64.load
               (i32.add
                (get_local $1)
                (i32.const 216)
               )
              )
              (i64.const -6146698476238372864)
              (i64.const -6146698476238372864)
             )
            )
            (i32.const 0)
           )
          )
          (call $eosio_assert
           (i32.eq
            (i32.load offset=72
             (call $_ZNK5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE31load_object_by_primary_iteratorEl
              (get_local $13)
              (get_local $12)
             )
            )
            (get_local $13)
           )
           (i32.const 16)
          )
         )
         (br_if $label$10
          (i32.eq
           (tee_local $12
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 236)
             )
            )
           )
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 232)
            )
           )
          )
         )
         (call $eosio_assert
          (i32.eq
           (i32.load offset=72
            (tee_local $12
             (i32.load
              (i32.add
               (get_local $12)
               (i32.const -24)
              )
             )
            )
           )
           (get_local $13)
          )
          (i32.const 16)
         )
         (br $label$9)
        )
        (call $eosio_assert
         (i32.const 1)
         (i32.const 192)
        )
        (set_local $11
         (i64.const 5459781)
        )
        (set_local $12
         (i32.const 0)
        )
        (block $label$14
         (block $label$15
          (loop $label$16
           (br_if $label$15
            (i32.gt_u
             (i32.add
              (i32.shl
               (i32.wrap/i64
                (get_local $11)
               )
               (i32.const 24)
              )
              (i32.const -1073741825)
             )
             (i32.const 452984830)
            )
           )
           (block $label$17
            (br_if $label$17
             (i64.ne
              (i64.and
               (tee_local $11
                (i64.shr_u
                 (get_local $11)
                 (i64.const 8)
                )
               )
               (i64.const 255)
              )
              (i64.const 0)
             )
            )
            (loop $label$18
             (br_if $label$15
              (i64.ne
               (i64.and
                (tee_local $11
                 (i64.shr_u
                  (get_local $11)
                  (i64.const 8)
                 )
                )
                (i64.const 255)
               )
               (i64.const 0)
              )
             )
             (br_if $label$18
              (i32.lt_s
               (tee_local $12
                (i32.add
                 (get_local $12)
                 (i32.const 1)
                )
               )
               (i32.const 7)
              )
             )
            )
           )
           (set_local $14
            (i32.const 1)
           )
           (br_if $label$16
            (i32.lt_s
             (tee_local $12
              (i32.add
               (get_local $12)
               (i32.const 1)
              )
             )
             (i32.const 7)
            )
           )
           (br $label$14)
          )
         )
         (set_local $14
          (i32.const 0)
         )
        )
        (call $eosio_assert
         (get_local $14)
         (i32.const 256)
        )
        (i64.store
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
         (i64.const 0)
        )
        (i64.store
         (get_local $0)
         (i64.const 0)
        )
        (i64.store
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
         (i64.const 1397703940)
        )
        (i32.store8
         (i32.add
          (get_local $0)
          (i32.const 24)
         )
         (i32.const 100)
        )
        (i32.store8
         (i32.add
          (get_local $0)
          (i32.const 27)
         )
         (i32.load8_u
          (i32.add
           (get_local $15)
           (i32.const 2)
          )
         )
        )
        (i32.store16 offset=25 align=1
         (get_local $0)
         (i32.load16_u align=1
          (get_local $15)
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 28)
         )
         (i32.const 36000)
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 32)
         )
         (i32.const 10800)
        )
        (i32.store8
         (i32.add
          (get_local $0)
          (i32.const 36)
         )
         (i32.const 100)
        )
        (i32.store8
         (i32.add
          (get_local $0)
          (i32.const 37)
         )
         (i32.const 1)
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 40)
         )
         (i32.const 28800)
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 44)
         )
         (i32.const 14400)
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 48)
         )
         (i32.const 3600)
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 52)
         )
         (i32.const 60)
        )
        (i32.store8
         (i32.add
          (get_local $0)
          (i32.const 56)
         )
         (i32.const 20)
        )
        (i32.store8
         (i32.add
          (get_local $0)
          (i32.const 57)
         )
         (i32.const 28)
        )
        (i32.store16
         (i32.add
          (get_local $0)
          (i32.const 58)
         )
         (i32.const 10)
        )
        (i32.store16
         (i32.add
          (get_local $0)
          (i32.const 60)
         )
         (i32.const 0)
        )
        (i32.store16
         (i32.add
          (get_local $0)
          (i32.const 62)
         )
         (i32.const 0)
        )
        (i32.store16
         (i32.add
          (get_local $0)
          (i32.const 64)
         )
         (i32.const 0)
        )
        (set_local $14
         (i32.add
          (get_local $1)
          (i32.const 168)
         )
        )
        (br_if $label$8
         (i32.eq
          (tee_local $12
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 196)
            )
           )
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 192)
           )
          )
         )
        )
        (call $eosio_assert
         (i32.eq
          (i32.load offset=56
           (tee_local $12
            (i32.load
             (i32.add
              (get_local $12)
              (i32.const -24)
             )
            )
           )
          )
          (get_local $14)
         )
         (i32.const 16)
        )
        (br_if $label$7
         (get_local $12)
        )
        (br $label$6)
       )
       (set_local $12
        (i32.const 0)
       )
       (br_if $label$9
        (i32.lt_s
         (tee_local $1
          (call $db_find_i64
           (i64.load
            (i32.add
             (get_local $1)
             (i32.const 208)
            )
           )
           (i64.load
            (i32.add
             (get_local $1)
             (i32.const 216)
            )
           )
           (i64.const -6146698476238372864)
           (i64.const -6146698476238372864)
          )
         )
         (i32.const 0)
        )
       )
       (call $eosio_assert
        (i32.eq
         (i32.load offset=72
          (tee_local $12
           (call $_ZNK5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE31load_object_by_primary_iteratorEl
            (get_local $13)
            (get_local $1)
           )
          )
         )
         (get_local $13)
        )
        (i32.const 16)
       )
      )
      (call $eosio_assert
       (i32.ne
        (get_local $12)
        (i32.const 0)
       )
       (i32.const 528)
      )
      (drop
       (call $memcpy
        (get_local $0)
        (call $memcpy
         (get_local $15)
         (get_local $12)
         (i32.const 72)
        )
        (i32.const 66)
       )
      )
      (br $label$5)
     )
     (br_if $label$6
      (i32.lt_s
       (tee_local $12
        (call $db_find_i64
         (i64.load
          (get_local $14)
         )
         (i64.load
          (i32.add
           (get_local $1)
           (i32.const 176)
          )
         )
         (i64.const -6146698476238405632)
         (i64.const -6146698476238405632)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=56
        (call $_ZNK5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE31load_object_by_primary_iteratorEl
         (get_local $14)
         (get_local $12)
        )
       )
       (get_local $14)
      )
      (i32.const 16)
     )
    )
    (block $label$19
     (block $label$20
      (br_if $label$20
       (i32.eq
        (tee_local $12
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 196)
          )
         )
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 192)
         )
        )
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=56
         (tee_local $12
          (i32.load
           (i32.add
            (get_local $12)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $14)
       )
       (i32.const 16)
      )
      (br $label$19)
     )
     (set_local $12
      (i32.const 0)
     )
     (br_if $label$19
      (i32.lt_s
       (tee_local $2
        (call $db_find_i64
         (i64.load
          (i32.add
           (get_local $1)
           (i32.const 168)
          )
         )
         (i64.load
          (i32.add
           (get_local $1)
           (i32.const 176)
          )
         )
         (i64.const -6146698476238405632)
         (i64.const -6146698476238405632)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=56
        (tee_local $12
         (call $_ZNK5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE31load_object_by_primary_iteratorEl
          (get_local $14)
          (get_local $2)
         )
        )
       )
       (get_local $14)
      )
      (i32.const 16)
     )
    )
    (call $eosio_assert
     (i32.ne
      (get_local $12)
      (i32.const 0)
     )
     (i32.const 528)
    )
    (i32.store
     (i32.add
      (get_local $15)
      (i32.const 12)
     )
     (i32.load
      (i32.add
       (get_local $12)
       (i32.const 20)
      )
     )
    )
    (i32.store
     (tee_local $2
      (i32.add
       (get_local $15)
       (i32.const 8)
      )
     )
     (i32.load
      (i32.add
       (get_local $12)
       (i32.const 16)
      )
     )
    )
    (i32.store offset=4
     (get_local $15)
     (i32.load
      (i32.add
       (get_local $12)
       (i32.const 12)
      )
     )
    )
    (i32.store
     (get_local $15)
     (i32.load offset=8
      (get_local $12)
     )
    )
    (set_local $3
     (i32.load offset=48
      (get_local $12)
     )
    )
    (set_local $4
     (i32.load offset=44
      (get_local $12)
     )
    )
    (set_local $5
     (i32.load offset=40
      (get_local $12)
     )
    )
    (set_local $6
     (i32.load8_u offset=37
      (get_local $12)
     )
    )
    (set_local $7
     (i32.load8_u offset=36
      (get_local $12)
     )
    )
    (set_local $8
     (i32.load offset=32
      (get_local $12)
     )
    )
    (set_local $9
     (i32.load offset=28
      (get_local $12)
     )
    )
    (set_local $10
     (i32.load8_u offset=24
      (get_local $12)
     )
    )
    (i64.store
     (get_local $0)
     (i64.load
      (get_local $12)
     )
    )
    (i64.store offset=8
     (get_local $0)
     (i64.load
      (get_local $15)
     )
    )
    (i64.store
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
     (i64.load
      (get_local $2)
     )
    )
    (i32.store8
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (get_local $10)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 28)
     )
     (get_local $9)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 32)
     )
     (get_local $8)
    )
    (i32.store8
     (i32.add
      (get_local $0)
      (i32.const 36)
     )
     (get_local $7)
    )
    (i32.store8
     (i32.add
      (get_local $0)
      (i32.const 37)
     )
     (get_local $6)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 40)
     )
     (get_local $5)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 44)
     )
     (get_local $4)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 48)
     )
     (get_local $3)
    )
    (block $label$21
     (block $label$22
      (br_if $label$22
       (i32.eq
        (tee_local $12
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 196)
          )
         )
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 192)
         )
        )
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=56
         (tee_local $12
          (i32.load
           (i32.add
            (get_local $12)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $14)
       )
       (i32.const 16)
      )
      (br_if $label$21
       (get_local $12)
      )
      (br $label$6)
     )
     (br_if $label$6
      (i32.lt_s
       (tee_local $12
        (call $db_find_i64
         (i64.load
          (i32.add
           (get_local $1)
           (i32.const 168)
          )
         )
         (i64.load
          (i32.add
           (get_local $1)
           (i32.const 176)
          )
         )
         (i64.const -6146698476238405632)
         (i64.const -6146698476238405632)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=56
        (tee_local $12
         (call $_ZNK5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE31load_object_by_primary_iteratorEl
          (get_local $14)
          (get_local $12)
         )
        )
       )
       (get_local $14)
      )
      (i32.const 16)
     )
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 560)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 608)
    )
    (block $label$23
     (br_if $label$23
      (i32.lt_s
       (tee_local $2
        (call $db_next_i64
         (i32.load offset=60
          (get_local $12)
         )
         (i32.add
          (get_local $15)
          (i32.const 72)
         )
        )
       )
       (i32.const 0)
      )
     )
     (drop
      (call $_ZNK5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE31load_object_by_primary_iteratorEl
       (get_local $14)
       (get_local $2)
      )
     )
    )
    (call $_ZN5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE5eraseERKS5_
     (get_local $14)
     (get_local $12)
    )
   )
   (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
    (get_local $13)
    (get_local $0)
    (i64.load
     (get_local $1)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $15)
    (i32.const 80)
   )
  )
 )
 (func $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (tee_local $3
         (i32.load
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
        (i32.load offset=24
         (get_local $0)
        )
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=72
         (tee_local $3
          (i32.load
           (i32.add
            (get_local $3)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $0)
       )
       (i32.const 16)
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (br_if $label$1
      (i32.lt_s
       (tee_local $3
        (call $db_find_i64
         (i64.load
          (get_local $0)
         )
         (i64.load offset=8
          (get_local $0)
         )
         (i64.const -6146698476238372864)
         (i64.const -6146698476238372864)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=72
        (tee_local $3
         (call $_ZNK5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE31load_object_by_primary_iteratorEl
          (get_local $0)
          (get_local $3)
         )
        )
       )
       (get_local $0)
      )
      (i32.const 16)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $1)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 80)
    )
    (call $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE6modifyIZNS4_3setERKS3_yEUlRS5_E_EEvRKS5_yOT_
     (get_local $0)
     (get_local $3)
     (get_local $2)
     (get_local $4)
    )
    (br $label$0)
   )
   (i32.store offset=8
    (get_local $4)
    (get_local $1)
   )
   (call $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_
    (get_local $4)
    (get_local $0)
    (get_local $2)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=44
   (tee_local $7
    (get_local $8)
   )
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $5
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $5)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $5)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $5)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $5)
    )
   )
   (i32.store offset=36
    (get_local $7)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $7)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $7)
    (i32.add
     (get_local $4)
     (get_local $5)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $5)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=12
    (get_local $7)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (i32.store offset=16
    (get_local $7)
    (i32.add
     (get_local $7)
     (i32.const 44)
    )
   )
   (i32.store offset=8
    (get_local $7)
    (get_local $0)
   )
   (set_local $5
    (call $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE4itemC2IZNKS6_31load_object_by_primary_iteratorElEUlRT_E_EEPKS6_OS9_
     (tee_local $4
      (call $_Znwj
       (i32.const 88)
      )
     )
     (get_local $0)
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $7)
    (get_local $4)
   )
   (i64.store offset=8
    (get_local $7)
    (i64.const -6146698476238372864)
   )
   (i32.store offset=4
    (get_local $7)
    (tee_local $1
     (i32.load offset=76
      (get_local $4)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $6
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $6)
      (i64.const -6146698476238372864)
     )
     (i32.store offset=16
      (get_local $6)
      (get_local $1)
     )
     (i32.store offset=24
      (get_local $7)
      (i32.const 0)
     )
     (i32.store
      (get_local $6)
      (get_local $4)
     )
     (i32.store
      (get_local $3)
      (i32.add
       (get_local $6)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300045597471178752ENS1_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.add
      (get_local $7)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $7)
    )
   )
   (i32.store offset=24
    (get_local $7)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (get_local $5)
 )
 (func $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE6modifyIZNS4_3setERKS3_yEUlRS5_E_EEvRKS5_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=72
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (drop
   (call $memcpy
    (get_local $1)
    (i32.load
     (get_local $3)
    )
    (i32.const 66)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 416)
  )
  (i32.store offset=72
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 61)
   )
  )
  (i32.store offset=68
   (get_local $4)
   (get_local $4)
  )
  (i32.store offset=64
   (get_local $4)
   (get_local $4)
  )
  (i32.store offset=80
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 64)
   )
  )
  (i32.store offset=92
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=88
   (get_local $4)
   (get_local $1)
  )
  (i32.store offset=96
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (i32.store offset=100
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=104
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=108
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
  )
  (i32.store offset=112
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 37)
   )
  )
  (i32.store offset=116
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=120
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (i32.store offset=124
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (i32.store offset=128
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
  )
  (i32.store offset=132
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (i32.store offset=136
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 57)
   )
  )
  (i32.store offset=140
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 58)
   )
  )
  (i32.store offset=144
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 60)
   )
  )
  (i32.store offset=148
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 62)
   )
  )
  (i32.store offset=152
   (get_local $4)
   (i32.add
    (get_local $1)
    (i32.const 64)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio5assetERKhRKmSE_SC_SC_SE_SE_SE_SE_SC_SC_RKtSG_SG_SG_EEEZNS7_lsINS7_10datastreamIPcEEN3pet14st_pet_config2ELPv0EEERT_SQ_RKT0_EUlRKSP_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11ELj12ELj13ELj14ELj15ELj16EEEEvSQ_OSR_NSt3__116integer_sequenceIjJXspT1_EEEENSY_17integral_constantIbLb0EEE
   (i32.add
    (get_local $4)
    (i32.const 88)
   )
   (i32.add
    (get_local $4)
    (i32.const 80)
   )
  )
  (call $db_update_i64
   (i32.load offset=76
    (get_local $1)
   )
   (get_local $2)
   (get_local $4)
   (i32.const 61)
  )
  (block $label$0
   (br_if $label$0
    (i64.gt_u
     (i64.load offset=16
      (get_local $0)
     )
     (i64.const -6146698476238372864)
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i64.const -6146698476238372863)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 160)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $7)
   (get_local $2)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $current_receiver)
   )
   (i32.const 128)
  )
  (i32.store offset=20
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
  )
  (drop
   (call $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE4itemC2IZNS6_7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_EUlRSF_E_EEPKS6_SG_
    (tee_local $3
     (call $_Znwj
      (i32.const 88)
     )
    )
    (get_local $1)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=32
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const -6146698476238372864)
  )
  (i32.store offset=12
   (get_local $7)
   (tee_local $4
    (i32.load offset=76
     (get_local $3)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $5)
     (i64.const -6146698476238372864)
    )
    (i32.store offset=16
     (get_local $5)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $5)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300045597471178752ENS1_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE4itemC2IZNS6_7emplaceIZNS4_3setERKS3_yEUlRS5_E0_EENS6_14const_iteratorEyOT_EUlRSF_E_EEPKS6_SG_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
   )
   (i64.const 1397703940)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 192)
  )
  (set_local $3
   (i64.shr_u
    (i64.load
     (get_local $4)
    )
    (i64.const 8)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 256)
  )
  (i32.store8 offset=24
   (get_local $0)
   (i32.const 100)
  )
  (i64.store offset=28 align=4
   (get_local $0)
   (i64.const 46385646832800)
  )
  (i32.store8 offset=36
   (get_local $0)
   (i32.const 100)
  )
  (i32.store8 offset=37
   (get_local $0)
   (i32.const 1)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 61847529091200)
  )
  (i32.store offset=48
   (get_local $0)
   (i32.const 3600)
  )
  (i32.store offset=52
   (get_local $0)
   (i32.const 60)
  )
  (i32.store8 offset=56
   (get_local $0)
   (i32.const 20)
  )
  (i32.store8 offset=57
   (get_local $0)
   (i32.const 28)
  )
  (i32.store16 offset=58
   (get_local $0)
   (i32.const 10)
  )
  (i32.store16 offset=60
   (get_local $0)
   (i32.const 0)
  )
  (i32.store16 offset=62
   (get_local $0)
   (i32.const 0)
  )
  (i32.store16 offset=64
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=72
   (get_local $0)
   (get_local $1)
  )
  (set_local $5
   (i32.load
    (get_local $2)
   )
  )
  (set_local $4
   (call $memcpy
    (get_local $0)
    (i32.load
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 66)
   )
  )
  (i32.store offset=72
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 61)
   )
  )
  (i32.store offset=68
   (get_local $6)
   (get_local $6)
  )
  (i32.store offset=64
   (get_local $6)
   (get_local $6)
  )
  (i32.store offset=80
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
  (i32.store offset=92
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store offset=88
   (get_local $6)
   (get_local $4)
  )
  (i32.store offset=96
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 24)
   )
  )
  (i32.store offset=100
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 28)
   )
  )
  (i32.store offset=104
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
  )
  (i32.store offset=108
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 36)
   )
  )
  (i32.store offset=112
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 37)
   )
  )
  (i32.store offset=116
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 40)
   )
  )
  (i32.store offset=120
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 44)
   )
  )
  (i32.store offset=124
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
  )
  (i32.store offset=128
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 52)
   )
  )
  (i32.store offset=132
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 56)
   )
  )
  (i32.store offset=136
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 57)
   )
  )
  (i32.store offset=140
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 58)
   )
  )
  (i32.store offset=144
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 60)
   )
  )
  (i32.store offset=148
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 62)
   )
  )
  (i32.store offset=152
   (get_local $6)
   (i32.add
    (get_local $4)
    (i32.const 64)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio5assetERKhRKmSE_SC_SC_SE_SE_SE_SE_SC_SC_RKtSG_SG_SG_EEEZNS7_lsINS7_10datastreamIPcEEN3pet14st_pet_config2ELPv0EEERT_SQ_RKT0_EUlRKSP_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11ELj12ELj13ELj14ELj15ELj16EEEEvSQ_OSR_NSt3__116integer_sequenceIjJXspT1_EEEENSY_17integral_constantIbLb0EEE
   (i32.add
    (get_local $6)
    (i32.const 88)
   )
   (i32.add
    (get_local $6)
    (i32.const 80)
   )
  )
  (i32.store offset=76
   (get_local $4)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $5)
    )
    (i64.const -6146698476238372864)
    (i64.load
     (i32.load offset=8
      (get_local $2)
     )
    )
    (i64.const -6146698476238372864)
    (get_local $6)
    (i32.const 61)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.gt_u
     (i64.load offset=16
      (get_local $5)
     )
     (i64.const -6146698476238372864)
    )
   )
   (i64.store
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
    (i64.const -6146698476238372863)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 160)
   )
  )
  (get_local $4)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12300045597471178752ENS1_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio5assetERKhRKmSE_SC_SC_SE_SE_SE_SE_SC_SC_RKtSG_SG_SG_EEEZNS7_lsINS7_10datastreamIPcEEN3pet14st_pet_config2ELPv0EEERT_SQ_RKT0_EUlRKSP_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11ELj12ELj13ELj14ELj15ELj16EEEEvSQ_OSR_NSt3__116integer_sequenceIjJXspT1_EEEENSY_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=44
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=48
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=52
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 1)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $3
   (i32.load offset=56
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 1)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $3
   (i32.load offset=60
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 1)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $2
   (i32.load offset=64
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $2)
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 2)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300045597471178752ENS_9singletonILy12300045597471178752EN3pet14st_pet_config2EE3rowEJEE4itemC2IZNKS6_31load_object_by_primary_iteratorElEUlRT_E_EEPKS6_OS9_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
   )
   (i64.const 1397703940)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 192)
  )
  (set_local $3
   (i64.shr_u
    (i64.load
     (get_local $4)
    )
    (i64.const 8)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 256)
  )
  (i32.store8 offset=24
   (get_local $0)
   (i32.const 100)
  )
  (i64.store offset=28 align=4
   (get_local $0)
   (i64.const 46385646832800)
  )
  (i32.store8 offset=36
   (get_local $0)
   (i32.const 100)
  )
  (i32.store8 offset=37
   (get_local $0)
   (i32.const 1)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 61847529091200)
  )
  (i32.store offset=48
   (get_local $0)
   (i32.const 3600)
  )
  (i32.store offset=52
   (get_local $0)
   (i32.const 60)
  )
  (i32.store8 offset=56
   (get_local $0)
   (i32.const 20)
  )
  (i32.store8 offset=57
   (get_local $0)
   (i32.const 28)
  )
  (i32.store16 offset=58
   (get_local $0)
   (i32.const 10)
  )
  (i32.store16 offset=60
   (get_local $0)
   (i32.const 0)
  )
  (i32.store16 offset=62
   (get_local $0)
   (i32.const 0)
  )
  (i32.store16 offset=64
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=72
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (i32.load offset=4
    (get_local $2)
   )
  )
  (i32.store offset=12
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store offset=8
   (get_local $6)
   (get_local $0)
  )
  (i32.store offset=16
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
  )
  (i32.store offset=20
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
  )
  (i32.store offset=24
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
  )
  (i32.store offset=28
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 37)
   )
  )
  (i32.store offset=36
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
  )
  (i32.store offset=40
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 44)
   )
  )
  (i32.store offset=44
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 48)
   )
  )
  (i32.store offset=48
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 52)
   )
  )
  (i32.store offset=52
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 56)
   )
  )
  (i32.store offset=56
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 57)
   )
  )
  (i32.store offset=60
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 58)
   )
  )
  (i32.store offset=64
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 60)
   )
  )
  (i32.store offset=68
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 62)
   )
  )
  (i32.store offset=72
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 64)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio5assetERhRmSA_S9_S9_SA_SA_SA_SA_S9_S9_RtSB_SB_SB_EEEZNS6_rsINS6_10datastreamIPKcEEN3pet14st_pet_config2ELPv0EEERT_SM_RT0_EUlSM_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11ELj12ELj13ELj14ELj15ELj16EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSR_17integral_constantIbLb0EEE
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
   (get_local $6)
  )
  (i32.store offset=76
   (get_local $0)
   (i32.load
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 80)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio5assetERhRmSA_S9_S9_SA_SA_SA_SA_S9_S9_RtSB_SB_SB_EEEZNS6_rsINS6_10datastreamIPKcEEN3pet14st_pet_config2ELPv0EEERT_SM_RT0_EUlSM_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11ELj12ELj13ELj14ELj15ELj16EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSR_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=44
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=48
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=52
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 1)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $3
   (i32.load offset=56
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 1)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $3
   (i32.load offset=60
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 1)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $2
   (i32.load offset=64
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 2)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=44
   (tee_local $7
    (get_local $8)
   )
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $5
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $5)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $5)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $5)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $5)
    )
   )
   (i32.store offset=36
    (get_local $7)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $7)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $7)
    (i32.add
     (get_local $4)
     (get_local $5)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $5)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=12
    (get_local $7)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (i32.store offset=16
    (get_local $7)
    (i32.add
     (get_local $7)
     (i32.const 44)
    )
   )
   (i32.store offset=8
    (get_local $7)
    (get_local $0)
   )
   (set_local $5
    (call $_ZN5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE4itemC2IZNKS6_31load_object_by_primary_iteratorElEUlRT_E_EEPKS6_OS9_
     (tee_local $4
      (call $_Znwj
       (i32.const 72)
      )
     )
     (get_local $0)
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $7)
    (get_local $4)
   )
   (i64.store offset=8
    (get_local $7)
    (i64.const -6146698476238405632)
   )
   (i32.store offset=4
    (get_local $7)
    (tee_local $1
     (i32.load offset=60
      (get_local $4)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $6
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $6)
      (i64.const -6146698476238405632)
     )
     (i32.store offset=16
      (get_local $6)
      (get_local $1)
     )
     (i32.store offset=24
      (get_local $7)
      (i32.const 0)
     )
     (i32.store
      (get_local $6)
      (get_local $4)
     )
     (i32.store
      (get_local $3)
      (i32.add
       (get_local $6)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300045597471145984ENS1_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.add
      (get_local $7)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $7)
    )
   )
   (i32.store offset=24
    (get_local $7)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (get_local $5)
 )
 (func $_ZN5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE5eraseERKS5_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 640)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 688)
  )
  (call $eosio_assert
   (i32.ne
    (tee_local $5
     (i32.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
    )
    (i32.load offset=24
     (get_local $0)
    )
   )
   (i32.const 752)
  )
  (set_local $4
   (i32.add
    (get_local $5)
    (i32.const -24)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (get_local $5)
       (tee_local $6
        (i32.load
         (get_local $6)
        )
       )
      )
     )
     (set_local $2
      (i32.sub
       (i32.const 0)
       (get_local $6)
      )
     )
     (loop $label$3
      (set_local $3
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $4)
          (i32.const 24)
         )
        )
       )
      )
      (i32.store
       (get_local $6)
       (i32.const 0)
      )
      (set_local $5
       (i32.load
        (get_local $4)
       )
      )
      (i32.store
       (get_local $4)
       (get_local $3)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (i32.store
       (i32.add
        (get_local $4)
        (i32.const 16)
       )
       (i32.load
        (i32.add
         (get_local $4)
         (i32.const 40)
        )
       )
      )
      (i64.store
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
       (i64.load
        (i32.add
         (get_local $4)
         (i32.const 32)
        )
       )
      )
      (set_local $4
       (get_local $6)
      )
      (br_if $label$3
       (i32.ne
        (i32.add
         (get_local $6)
         (get_local $2)
        )
        (i32.const -24)
       )
      )
     )
     (br_if $label$1
      (i32.ne
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $0)
          (i32.const 28)
         )
        )
       )
       (get_local $6)
      )
     )
     (br $label$0)
    )
    (set_local $6
     (get_local $4)
    )
   )
   (loop $label$5
    (set_local $4
     (i32.load
      (tee_local $5
       (i32.add
        (get_local $5)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $5)
     (i32.const 0)
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (get_local $4)
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$5
     (i32.ne
      (get_local $6)
      (get_local $5)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $6)
  )
  (call $db_remove_i64
   (i32.load offset=60
    (get_local $1)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300045597471145984ENS_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE4itemC2IZNKS6_31load_object_by_primary_iteratorElEUlRT_E_EEPKS6_OS9_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
   )
   (i64.const 1397703940)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 192)
  )
  (set_local $3
   (i64.shr_u
    (i64.load
     (get_local $4)
    )
    (i64.const 8)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 256)
  )
  (i32.store8 offset=24
   (get_local $0)
   (i32.const 100)
  )
  (i64.store offset=28 align=4
   (get_local $0)
   (i64.const 46385646832800)
  )
  (i32.store8 offset=36
   (get_local $0)
   (i32.const 100)
  )
  (i32.store8 offset=37
   (get_local $0)
   (i32.const 1)
  )
  (i64.store offset=40
   (get_local $0)
   (i64.const 61847529091200)
  )
  (i32.store offset=48
   (get_local $0)
   (i32.const 3600)
  )
  (i32.store offset=52
   (get_local $0)
   (i32.const 1000)
  )
  (i32.store offset=56
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $6)
   (i32.load offset=4
    (get_local $2)
   )
  )
  (i32.store offset=20
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store offset=16
   (get_local $6)
   (get_local $0)
  )
  (i32.store offset=24
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
  )
  (i32.store offset=28
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
  )
  (i32.store offset=36
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 36)
   )
  )
  (i32.store offset=40
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 37)
   )
  )
  (i32.store offset=44
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
  )
  (i32.store offset=48
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 44)
   )
  )
  (i32.store offset=52
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 48)
   )
  )
  (i32.store offset=56
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 52)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio5assetERhRmSA_S9_S9_SA_SA_SA_SA_EEEZNS6_rsINS6_10datastreamIPKcEEN3pet13st_pet_configELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (i32.store offset=60
   (get_local $0)
   (i32.load
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 64)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12300045597471145984ENS1_9singletonILy12300045597471145984EN3pet13st_pet_configEE3rowEJEE8item_ptrENS_9allocatorIS9_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS8_4itemENS_14default_deleteISF_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio5assetERhRmSA_S9_S9_SA_SA_SA_SA_EEEZNS6_rsINS6_10datastreamIPKcEEN3pet13st_pet_configELPv0EEERT_SL_RT0_EUlSL_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENSQ_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $2
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
 )
 (func $_ZN3pet18_update_pet_configERKNS_14st_pet_config2E (param $0 i32) (param $1 i32)
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (get_local $1)
   (i64.load
    (get_local $0)
   )
  )
 )
 (func $_ZN3pet11changebatmaEt (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store16 offset=66
   (get_local $2)
   (get_local $1)
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet12changebatidtEm (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store offset=60
   (get_local $2)
   (get_local $1)
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet12changebatamiEh (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store8 offset=64
   (get_local $2)
   (get_local $1)
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet12changebatamaEh (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store8 offset=65
   (get_local $2)
   (get_local $1)
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet12addelemttypeENSt3__16vectorIhNS0_9allocatorIhEEEE (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $1)
    )
    (i32.load
     (get_local $1)
    )
   )
   (i32.const 816)
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $6)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (get_local $0)
  )
  (i64.store offset=40
   (get_local $6)
   (get_local $4)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=48
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 128)
  )
  (i32.store offset=16
   (get_local $6)
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=20
   (get_local $6)
   (get_local $6)
  )
  (i32.store offset=24
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 40)
   )
  )
  (i32.store offset=16
   (tee_local $1
    (call $_Znwj
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8 align=4
   (get_local $1)
   (i64.const 0)
  )
  (i32.store offset=20
   (get_local $1)
   (get_local $3)
  )
  (call $_ZZN5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE7emplaceIZN3pet12addelemttypeENSt3__16vectorIhNS6_9allocatorIhEEEEE3$_0EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $6)
   (get_local $1)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (i32.store offset=12
   (get_local $6)
   (tee_local $2
    (i32.load offset=24
     (get_local $1)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $0)
          (i32.const 76)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 80)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $4)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $2)
    )
    (i32.store offset=32
     (get_local $6)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $1)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $0)
     (i32.const 72)
    )
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (i32.add
     (get_local $6)
     (i32.const 12)
    )
   )
  )
  (set_local $0
   (i32.load offset=32
    (get_local $6)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $0)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (tee_local $1
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 12)
     )
     (get_local $1)
    )
    (call $_ZdlPv
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE7emplaceIZN3pet12addelemttypeENSt3__16vectorIhNS6_9allocatorIhEEEEE3$_0EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (tee_local $9
     (get_local $10)
    )
    (i32.const 8)
   )
   (tee_local $7
    (i32.load
     (tee_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i32.store16 offset=70
   (get_local $9)
   (i32.add
    (i32.load16_u offset=70
     (get_local $9)
    )
    (i32.const 1)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $7)
    (i32.const 208)
   )
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
   (i64.load
    (get_local $7)
   )
  )
  (i64.store
   (get_local $1)
   (i64.add
    (i64.load16_u offset=70
     (get_local $9)
    )
    (i64.const -1)
   )
  )
  (set_local $7
   (i32.const 8)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $3
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
     (tee_local $5
      (i32.load offset=4
       (get_local $5)
      )
     )
    )
   )
   (call $_ZNSt3__16vectorIhNS_9allocatorIhEEE6assignIPhEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIhNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
    (get_local $3)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=4
     (get_local $5)
    )
   )
  )
  (set_local $8
   (i64.extend_u/i32
    (tee_local $6
     (i32.sub
      (tee_local $5
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 12)
        )
       )
      )
      (tee_local $4
       (i32.load
        (get_local $3)
       )
      )
     )
    )
   )
  )
  (loop $label$1
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $8
      (i64.shr_u
       (get_local $8)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.lt_u
      (tee_local $5
       (select
        (get_local $7)
        (i32.add
         (get_local $6)
         (get_local $7)
        )
        (i32.eq
         (get_local $4)
         (get_local $5)
        )
       )
      )
      (i32.const 513)
     )
    )
    (set_local $7
     (call $malloc
      (get_local $5)
     )
    )
    (br $label$2)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $7
     (i32.sub
      (get_local $10)
      (i32.and
       (i32.add
        (get_local $5)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $9)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $9)
   (i32.add
    (get_local $7)
    (get_local $5)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $5)
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (get_local $7)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $9)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
    (get_local $3)
   )
  )
  (i32.store offset=24
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 6076804294378520576)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $8
     (i64.load
      (get_local $1)
     )
    )
    (get_local $7)
    (get_local $5)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $5)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $8)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $8)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $8)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 80)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $2
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $2)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (tee_local $6
         (i32.load offset=8
          (get_local $1)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
       (get_local $6)
      )
      (call $_ZdlPv
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $2)
      (get_local $7)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
 )
 (func $_ZNSt3__16vectorIhNS_9allocatorIhEEE6assignIPhEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIhNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.le_u
        (tee_local $3
         (i32.sub
          (get_local $2)
          (get_local $1)
         )
        )
        (i32.sub
         (tee_local $7
          (i32.load offset=8
           (get_local $0)
          )
         )
         (tee_local $4
          (i32.load
           (get_local $0)
          )
         )
        )
       )
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $4)
        )
       )
       (i32.store offset=4
        (get_local $0)
        (get_local $4)
       )
       (call $_ZdlPv
        (get_local $4)
       )
       (set_local $7
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.const 0)
       )
       (i64.store align=4
        (get_local $0)
        (i64.const 0)
       )
      )
      (br_if $label$0
       (i32.le_s
        (get_local $3)
        (i32.const -1)
       )
      )
      (set_local $2
       (i32.const 2147483647)
      )
      (block $label$5
       (br_if $label$5
        (i32.gt_u
         (get_local $7)
         (i32.const 1073741822)
        )
       )
       (set_local $2
        (select
         (get_local $3)
         (tee_local $4
          (i32.shl
           (get_local $7)
           (i32.const 1)
          )
         )
         (i32.lt_u
          (get_local $4)
          (get_local $3)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (tee_local $4
        (call $_Znwj
         (get_local $2)
        )
       )
      )
      (i32.store offset=4
       (get_local $0)
       (get_local $4)
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.add
        (get_local $4)
        (get_local $2)
       )
      )
      (drop
       (call $memcpy
        (get_local $4)
        (get_local $1)
        (get_local $3)
       )
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $0
       (i32.add
        (i32.load offset=4
         (get_local $0)
        )
        (get_local $3)
       )
      )
      (br $label$2)
     )
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (tee_local $6
         (i32.sub
          (tee_local $5
           (select
            (i32.add
             (get_local $1)
             (tee_local $7
              (i32.sub
               (i32.load offset=4
                (get_local $0)
               )
               (get_local $4)
              )
             )
            )
            (get_local $2)
            (i32.gt_u
             (get_local $3)
             (get_local $7)
            )
           )
          )
          (get_local $1)
         )
        )
       )
      )
      (drop
       (call $memmove
        (get_local $4)
        (get_local $1)
        (get_local $6)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (get_local $3)
        (get_local $7)
       )
      )
      (br_if $label$1
       (i32.lt_s
        (tee_local $0
         (i32.sub
          (get_local $2)
          (get_local $5)
         )
        )
        (i32.const 1)
       )
      )
      (drop
       (call $memcpy
        (i32.load
         (get_local $1)
        )
        (get_local $5)
        (get_local $0)
       )
      )
      (set_local $0
       (i32.add
        (i32.load
         (get_local $1)
        )
        (get_local $0)
       )
      )
      (br $label$2)
     )
     (set_local $0
      (i32.add
       (get_local $4)
       (get_local $6)
      )
     )
    )
    (i32.store
     (get_local $1)
     (get_local $0)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (get_local $0)
  )
  (unreachable)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (set_local $7
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $6)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $6
         (i64.shr_u
          (get_local $6)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $7)
     )
     (i32.const 0)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $7
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $5
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (set_local $2
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $4)
       )
       (get_local $7)
      )
      (i32.const 0)
     )
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $2)
      )
      (get_local $5)
      (i32.const 1)
     )
    )
    (i32.store
     (get_local $2)
     (tee_local $7
      (i32.add
       (i32.load
        (get_local $2)
       )
       (i32.const 1)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (get_local $3)
      (tee_local $5
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN3pet12changeelemttEyNSt3__16vectorIhNS0_9allocatorIhEEEE (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $2)
    )
    (i32.load
     (get_local $2)
    )
   )
   (i32.const 816)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $9
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 76)
       )
      )
     )
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 72)
       )
      )
     )
    )
   )
   (set_local $8
    (i32.add
     (get_local $9)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $1)
     )
    )
    (set_local $9
     (get_local $8)
    )
    (set_local $8
     (tee_local $5
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 48)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $9)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=20
       (tee_local $8
        (i32.load
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $5)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $8
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $9
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 48)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 56)
        )
       )
       (i64.const 6076804294378520576)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=20
      (tee_local $8
       (call $_ZNK5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE31load_object_by_primary_iteratorEl
        (get_local $5)
        (get_local $9)
       )
      )
     )
     (get_local $5)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $3
    (i32.ne
     (get_local $8)
     (i32.const 0)
    )
   )
   (i32.const 864)
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 8)
    )
    (i32.const 12)
   )
   (i64.const 0)
  )
  (i32.store offset=16
   (get_local $10)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $10)
   (i64.load
    (get_local $8)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $9
       (i32.sub
        (i32.load
         (i32.add
          (get_local $8)
          (i32.const 12)
         )
        )
        (i32.load offset=8
         (get_local $8)
        )
       )
      )
     )
    )
    (br_if $label$4
     (i32.le_s
      (get_local $9)
      (i32.const -1)
     )
    )
    (i32.store
     (i32.add
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
      (i32.const 8)
     )
     (tee_local $4
      (call $_Znwj
       (get_local $9)
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $10)
      (i32.const 24)
     )
     (i32.add
      (get_local $4)
      (get_local $9)
     )
    )
    (i32.store
     (tee_local $7
      (i32.add
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
       (i32.const 12)
      )
     )
     (get_local $4)
    )
    (br_if $label$5
     (i32.lt_s
      (tee_local $9
       (i32.sub
        (i32.load
         (i32.add
          (get_local $8)
          (i32.const 12)
         )
        )
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $8)
           (i32.const 8)
          )
         )
        )
       )
      )
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $4)
      (get_local $6)
      (get_local $9)
     )
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $4)
      (get_local $9)
     )
    )
   )
   (set_local $1
    (i64.load
     (get_local $0)
    )
   )
   (i32.store
    (get_local $10)
    (get_local $2)
   )
   (call $eosio_assert
    (get_local $3)
    (i32.const 80)
   )
   (call $_ZN5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE6modifyIZN3pet12changeelemttEyNSt3__16vectorIhNS6_9allocatorIhEEEEE3$_1EEvRKS2_yOT_
    (get_local $5)
    (get_local $8)
    (get_local $1)
    (get_local $10)
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $8
       (i32.load offset=16
        (get_local $10)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $10)
      (i32.const 20)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
  (unreachable)
 )
 (func $_ZNK5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.le_u
      (get_local $6)
      (i32.const 512)
     )
    )
    (call $free
     (get_local $4)
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 40)
      )
     )
    )
    (set_local $4
     (i32.load offset=36
      (get_local $8)
     )
    )
   )
   (i32.store offset=16
    (tee_local $6
     (call $_Znwj
      (i32.const 32)
     )
    )
    (i32.const 0)
   )
   (i64.store offset=8 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=20
    (get_local $6)
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
     (i32.const 7)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (drop
    (call $_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=24
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (tee_local $7
       (i32.load offset=8
        (get_local $4)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $4)
      (i32.const 12)
     )
     (get_local $7)
    )
    (call $_ZdlPv
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE6modifyIZN3pet12changeelemttEyNSt3__16vectorIhNS6_9allocatorIhEEEEE3$_1EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (set_local $10
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=20
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (set_local $8
   (i32.const 8)
  )
  (set_local $9
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $5
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
     (tee_local $3
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (call $_ZNSt3__16vectorIhNS_9allocatorIhEEE6assignIPhEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIhNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
    (get_local $5)
    (i32.load
     (get_local $3)
    )
    (i32.load offset=4
     (get_local $3)
    )
   )
   (set_local $9
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (get_local $9)
   )
   (i32.const 416)
  )
  (set_local $9
   (i64.extend_u/i32
    (tee_local $7
     (i32.sub
      (tee_local $3
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 12)
        )
       )
      )
      (tee_local $6
       (i32.load
        (get_local $5)
       )
      )
     )
    )
   )
  )
  (loop $label$1
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.lt_u
      (tee_local $3
       (select
        (get_local $8)
        (i32.add
         (get_local $7)
         (get_local $8)
        )
        (i32.eq
         (get_local $6)
         (get_local $3)
        )
       )
      )
      (i32.const 513)
     )
    )
    (set_local $8
     (call $malloc
      (get_local $3)
     )
    )
    (br $label$2)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $8
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $3)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store
   (get_local $10)
   (get_local $8)
  )
  (i32.store offset=8
   (get_local $10)
   (i32.add
    (get_local $8)
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $10)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
    (get_local $10)
    (get_local $5)
   )
  )
  (call $db_update_i64
   (i32.load offset=24
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (get_local $3)
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 896)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.le_u
       (tee_local $5
        (i32.wrap/i64
         (get_local $6)
        )
       )
       (tee_local $7
        (i32.sub
         (tee_local $3
          (i32.load offset=4
           (get_local $1)
          )
         )
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
        )
       )
      )
     )
     (call $_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj
      (get_local $1)
      (i32.sub
       (get_local $5)
       (get_local $7)
      )
     )
     (br_if $label$2
      (i32.ne
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
       (tee_local $3
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
      )
     )
     (br $label$1)
    )
    (block $label$4
     (br_if $label$4
      (i32.ge_u
       (get_local $5)
       (get_local $7)
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
      (tee_local $3
       (i32.add
        (get_local $4)
        (get_local $5)
       )
      )
     )
    )
    (br_if $label$1
     (i32.eq
      (get_local $4)
      (get_local $3)
     )
    )
   )
   (set_local $7
    (i32.load
     (tee_local $5
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (loop $label$5
    (call $eosio_assert
     (i32.ne
      (i32.load
       (get_local $2)
      )
      (get_local $7)
     )
     (i32.const 512)
    )
    (drop
     (call $memcpy
      (get_local $4)
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
    (i32.store
     (get_local $5)
     (tee_local $7
      (i32.add
       (i32.load
        (get_local $5)
       )
       (i32.const 1)
      )
     )
    )
    (br_if $label$5
     (i32.ne
      (get_local $3)
      (tee_local $4
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN3pet10addpettypeENSt3__16vectorIhNS0_9allocatorIhEEEE (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $1)
    )
    (i32.load
     (get_local $1)
    )
   )
   (i32.const 912)
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $6)
   (get_local $1)
  )
  (i32.store
   (get_local $6)
   (get_local $0)
  )
  (i64.store offset=40
   (get_local $6)
   (get_local $4)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=8
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 128)
  )
  (i32.store offset=16
   (get_local $6)
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=20
   (get_local $6)
   (get_local $6)
  )
  (i32.store offset=24
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 40)
   )
  )
  (i32.store offset=16
   (tee_local $1
    (call $_Znwj
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8 align=4
   (get_local $1)
   (i64.const 0)
  )
  (i32.store offset=20
   (get_local $1)
   (get_local $3)
  )
  (call $_ZZN5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE7emplaceIZN3pet10addpettypeENSt3__16vectorIhNS6_9allocatorIhEEEEE3$_2EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $6)
   (get_local $1)
  )
  (i64.store offset=16
   (get_local $6)
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (i32.store offset=12
   (get_local $6)
   (tee_local $2
    (i32.load offset=24
     (get_local $1)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $0)
          (i32.const 36)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 40)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $4)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $2)
    )
    (i32.store offset=32
     (get_local $6)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $1)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$0)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (i32.add
     (get_local $6)
     (i32.const 12)
    )
   )
  )
  (set_local $0
   (i32.load offset=32
    (get_local $6)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (get_local $0)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (tee_local $1
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 12)
     )
     (get_local $1)
    )
    (call $_ZdlPv
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE7emplaceIZN3pet10addpettypeENSt3__16vectorIhNS6_9allocatorIhEEEEE3$_2EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (tee_local $9
     (get_local $10)
    )
    (i32.const 8)
   )
   (tee_local $7
    (i32.load
     (tee_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i32.store16 offset=72
   (get_local $9)
   (i32.add
    (i32.load16_u offset=72
     (get_local $9)
    )
    (i32.const 1)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $7)
    (i32.const 208)
   )
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
   (i64.load
    (get_local $7)
   )
  )
  (i64.store
   (get_local $1)
   (i64.add
    (i64.load16_u offset=72
     (get_local $9)
    )
    (i64.const -1)
   )
  )
  (set_local $7
   (i32.const 8)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $3
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
     (tee_local $5
      (i32.load offset=4
       (get_local $5)
      )
     )
    )
   )
   (call $_ZNSt3__16vectorIhNS_9allocatorIhEEE6assignIPhEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIhNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
    (get_local $3)
    (i32.load
     (get_local $5)
    )
    (i32.load offset=4
     (get_local $5)
    )
   )
  )
  (set_local $8
   (i64.extend_u/i32
    (tee_local $6
     (i32.sub
      (tee_local $5
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 12)
        )
       )
      )
      (tee_local $4
       (i32.load
        (get_local $3)
       )
      )
     )
    )
   )
  )
  (loop $label$1
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $8
      (i64.shr_u
       (get_local $8)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.lt_u
      (tee_local $5
       (select
        (get_local $7)
        (i32.add
         (get_local $6)
         (get_local $7)
        )
        (i32.eq
         (get_local $4)
         (get_local $5)
        )
       )
      )
      (i32.const 513)
     )
    )
    (set_local $7
     (call $malloc
      (get_local $5)
     )
    )
    (br $label$2)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $7
     (i32.sub
      (get_local $10)
      (i32.and
       (i32.add
        (get_local $5)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=8
   (get_local $9)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $9)
   (i32.add
    (get_local $7)
    (get_local $5)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $5)
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (get_local $7)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $9)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
    (get_local $3)
   )
  )
  (i32.store offset=24
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -6146393877533163520)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $8
     (i64.load
      (get_local $1)
     )
    )
    (get_local $7)
    (get_local $5)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $5)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $8)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $8)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $8)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 80)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $2
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $2)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (tee_local $6
         (i32.load offset=8
          (get_local $1)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
       (get_local $6)
      )
      (call $_ZdlPv
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $2)
      (get_local $7)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
 )
 (func $_ZN3pet12changepettypEyNSt3__16vectorIhNS0_9allocatorIhEEEE (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $2)
    )
    (i32.load
     (get_local $2)
    )
   )
   (i32.const 912)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $9
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 36)
       )
      )
     )
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 32)
       )
      )
     )
    )
   )
   (set_local $8
    (i32.add
     (get_local $9)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $1)
     )
    )
    (set_local $9
     (get_local $8)
    )
    (set_local $8
     (tee_local $5
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $9)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=20
       (tee_local $8
        (i32.load
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $5)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $8
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $9
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (i64.const -6146393877533163520)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=20
      (tee_local $8
       (call $_ZNK5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE31load_object_by_primary_iteratorEl
        (get_local $5)
        (get_local $9)
       )
      )
     )
     (get_local $5)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $3
    (i32.ne
     (get_local $8)
     (i32.const 0)
    )
   )
   (i32.const 960)
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 8)
    )
    (i32.const 12)
   )
   (i64.const 0)
  )
  (i32.store offset=16
   (get_local $10)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $10)
   (i64.load
    (get_local $8)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $9
       (i32.sub
        (i32.load
         (i32.add
          (get_local $8)
          (i32.const 12)
         )
        )
        (i32.load offset=8
         (get_local $8)
        )
       )
      )
     )
    )
    (br_if $label$4
     (i32.le_s
      (get_local $9)
      (i32.const -1)
     )
    )
    (i32.store
     (i32.add
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
      (i32.const 8)
     )
     (tee_local $4
      (call $_Znwj
       (get_local $9)
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $10)
      (i32.const 24)
     )
     (i32.add
      (get_local $4)
      (get_local $9)
     )
    )
    (i32.store
     (tee_local $7
      (i32.add
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
       (i32.const 12)
      )
     )
     (get_local $4)
    )
    (br_if $label$5
     (i32.lt_s
      (tee_local $9
       (i32.sub
        (i32.load
         (i32.add
          (get_local $8)
          (i32.const 12)
         )
        )
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $8)
           (i32.const 8)
          )
         )
        )
       )
      )
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $4)
      (get_local $6)
      (get_local $9)
     )
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $4)
      (get_local $9)
     )
    )
   )
   (set_local $1
    (i64.load
     (get_local $0)
    )
   )
   (i32.store
    (get_local $10)
    (get_local $2)
   )
   (call $eosio_assert
    (get_local $3)
    (i32.const 80)
   )
   (call $_ZN5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE6modifyIZN3pet12changepettypEyNSt3__16vectorIhNS6_9allocatorIhEEEEE3$_3EEvRKS2_yOT_
    (get_local $5)
    (get_local $8)
    (get_local $1)
    (get_local $10)
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $8
       (i32.load offset=16
        (get_local $10)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $10)
      (i32.const 20)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
  (unreachable)
 )
 (func $_ZNK5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.le_u
      (get_local $6)
      (i32.const 512)
     )
    )
    (call $free
     (get_local $4)
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 40)
      )
     )
    )
    (set_local $4
     (i32.load offset=36
      (get_local $8)
     )
    )
   )
   (i32.store offset=16
    (tee_local $6
     (call $_Znwj
      (i32.const 32)
     )
    )
    (i32.const 0)
   )
   (i64.store offset=8 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=20
    (get_local $6)
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
     (i32.const 7)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (drop
    (call $_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=24
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (tee_local $7
       (i32.load offset=8
        (get_local $4)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $4)
      (i32.const 12)
     )
     (get_local $7)
    )
    (call $_ZdlPv
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE6modifyIZN3pet12changepettypEyNSt3__16vectorIhNS6_9allocatorIhEEEEE3$_3EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (set_local $10
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=20
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (set_local $8
   (i32.const 8)
  )
  (set_local $9
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $5
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
     (tee_local $3
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (call $_ZNSt3__16vectorIhNS_9allocatorIhEEE6assignIPhEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIhNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
    (get_local $5)
    (i32.load
     (get_local $3)
    )
    (i32.load offset=4
     (get_local $3)
    )
   )
   (set_local $9
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (get_local $9)
   )
   (i32.const 416)
  )
  (set_local $9
   (i64.extend_u/i32
    (tee_local $7
     (i32.sub
      (tee_local $3
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 12)
        )
       )
      )
      (tee_local $6
       (i32.load
        (get_local $5)
       )
      )
     )
    )
   )
  )
  (loop $label$1
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.lt_u
      (tee_local $3
       (select
        (get_local $8)
        (i32.add
         (get_local $7)
         (get_local $8)
        )
        (i32.eq
         (get_local $6)
         (get_local $3)
        )
       )
      )
      (i32.const 513)
     )
    )
    (set_local $8
     (call $malloc
      (get_local $3)
     )
    )
    (br $label$2)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $8
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $3)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store
   (get_local $10)
   (get_local $8)
  )
  (i32.store offset=8
   (get_local $10)
   (i32.add
    (get_local $8)
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $10)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEhEERT_S5_RKNSt3__16vectorIT0_NS6_9allocatorIS8_EEEE
    (get_local $10)
    (get_local $5)
   )
  )
  (call $db_update_i64
   (i32.load offset=24
    (get_local $1)
   )
   (get_local $2)
   (get_local $8)
   (get_local $3)
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZN3pet8_next_idEv (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i64.store offset=8
   (get_local $2)
   (i64.add
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 1)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (set_local $1
   (i64.load offset=8
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
  (get_local $1)
 )
 (func $_ZN3pet16_next_element_idEv (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store16 offset=70
   (get_local $2)
   (i32.add
    (i32.load16_u offset=70
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (set_local $1
   (i64.load16_u offset=70
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
  (i64.add
   (get_local $1)
   (i64.const -1)
  )
 )
 (func $_ZN3pet17_next_pet_type_idEv (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store16 offset=72
   (get_local $2)
   (i32.add
    (i32.load16_u offset=72
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i64.load
    (get_local $0)
   )
  )
  (set_local $1
   (i64.load16_u offset=72
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
  (i64.add
   (get_local $1)
   (i64.const -1)
  )
 )
 (func $_ZN3pet12battlecreateEN5eosio4nameEh11checksum256 (type $FUNCSIG$vijii) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $13
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 320)
    )
   )
  )
  (i64.store offset=200
   (get_local $13)
   (get_local $1)
  )
  (i32.store8 offset=199
   (get_local $13)
   (get_local $2)
  )
  (call $require_auth
   (get_local $1)
  )
  (i32.store
   (tee_local $8
    (i32.add
     (get_local $13)
     (i32.const 184)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=168
   (get_local $13)
   (i64.const -1)
  )
  (i64.store offset=176
   (get_local $13)
   (i64.const 0)
  )
  (i64.store offset=152
   (get_local $13)
   (tee_local $12
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=160
   (get_local $13)
   (get_local $12)
  )
  (set_local $2
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $4
      (call $db_find_i64
       (get_local $12)
       (get_local $12)
       (i64.const 4157834741199929344)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $13)
        (i32.const 152)
       )
       (get_local $4)
      )
     )
     (i32.add
      (get_local $13)
      (i32.const 152)
     )
    )
    (i32.const 16)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $2)
   (i32.const 992)
  )
  (call $eosio_assert
   (i32.lt_u
    (i32.and
     (i32.add
      (i32.load8_u offset=199
       (get_local $13)
      )
      (i32.const -1)
     )
     (i32.const 255)
    )
    (i32.const 3)
   )
   (i32.const 1024)
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $13)
    (i32.const 80)
   )
   (get_local $0)
  )
  (i32.store16 offset=140
   (get_local $13)
   (tee_local $2
    (i32.add
     (i32.load16_u offset=140
      (get_local $13)
     )
     (i32.const 1)
    )
   )
  )
  (call $eosio_assert
   (i32.le_u
    (i32.and
     (get_local $2)
     (i32.const 65535)
    )
    (i32.load16_u offset=138
     (get_local $13)
    )
   )
   (i32.const 1056)
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=308
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 199)
   )
  )
  (i32.store offset=304
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 200)
   )
  )
  (i64.store offset=224
   (get_local $13)
   (get_local $1)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=152
     (get_local $13)
    )
    (call $current_receiver)
   )
   (i32.const 128)
  )
  (i32.store offset=260
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 304)
   )
  )
  (i32.store offset=256
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 152)
   )
  )
  (i32.store offset=264
   (get_local $13)
   (i32.add
    (get_local $13)
    (i32.const 224)
   )
  )
  (i64.store
   (tee_local $2
    (call $_Znwj
     (i32.const 56)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=12 align=4
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=20 align=4
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=28 align=4
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=36 align=4
   (get_local $2)
   (i64.const 0)
  )
  (i32.store offset=44
   (get_local $2)
   (i32.add
    (get_local $13)
    (i32.const 152)
   )
  )
  (call $_ZZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE7emplaceIZN3pet12battlecreateENS_4nameEh11checksum256E3$_4EENS3_14const_iteratorEyOT_ENKUlRSA_E_clINS3_4itemEEEDaSC_
   (i32.add
    (get_local $13)
    (i32.const 256)
   )
   (get_local $2)
  )
  (i32.store offset=216
   (get_local $13)
   (get_local $2)
  )
  (i64.store offset=256
   (get_local $13)
   (tee_local $1
    (i64.load
     (get_local $2)
    )
   )
  )
  (i32.store offset=212
   (get_local $13)
   (tee_local $5
    (i32.load offset=48
     (get_local $2)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $4
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $13)
          (i32.const 180)
         )
        )
       )
      )
      (i32.load
       (get_local $8)
      )
     )
    )
    (i64.store offset=8
     (get_local $4)
     (get_local $1)
    )
    (i32.store offset=16
     (get_local $4)
     (get_local $5)
    )
    (i32.store offset=216
     (get_local $13)
     (i32.const 0)
    )
    (i32.store
     (get_local $4)
     (get_local $2)
    )
    (i32.store
     (get_local $9)
     (i32.add
      (get_local $4)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERNS1_4nameERlEEEvDpOT_
    (i32.add
     (get_local $13)
     (i32.const 176)
    )
    (i32.add
     (get_local $13)
     (i32.const 216)
    )
    (i32.add
     (get_local $13)
     (i32.const 256)
    )
    (i32.add
     (get_local $13)
     (i32.const 212)
    )
   )
  )
  (set_local $2
   (i32.load offset=216
    (get_local $13)
   )
  )
  (i32.store offset=216
   (get_local $13)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (tee_local $4
       (i32.load offset=32
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $2)
      (i32.const 36)
     )
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $4
       (i32.load offset=20
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $2)
      (i32.const 24)
     )
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $13)
    (i32.const 80)
   )
   (i64.load
    (get_local $0)
   )
  )
  (set_local $6
   (i64.load
    (get_local $0)
   )
  )
  (set_local $1
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $2
   (i32.const 1088)
  )
  (set_local $7
   (i64.load offset=200
    (get_local $13)
   )
  )
  (set_local $11
   (i64.const 0)
  )
  (loop $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (br_if $label$11
         (i64.gt_u
          (get_local $1)
          (i64.const 5)
         )
        )
        (br_if $label$10
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $2)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$9)
       )
       (set_local $12
        (i64.const 0)
       )
       (br_if $label$8
        (i64.le_u
         (get_local $1)
         (i64.const 11)
        )
       )
       (br $label$7)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $12
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $12
     (i64.shl
      (i64.and
       (get_local $12)
       (i64.const 31)
      )
      (i64.and
       (get_local $10)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (set_local $1
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
   (set_local $11
    (i64.or
     (get_local $12)
     (get_local $11)
    )
   )
   (br_if $label$6
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store
   (tee_local $2
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 48)
     )
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (tee_local $0
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 48)
     )
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=48
   (get_local $13)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=56
   (get_local $13)
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 224)
     )
     (i32.const 24)
    )
   )
   (i64.load
    (get_local $2)
   )
  )
  (i64.store
   (tee_local $4
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 224)
     )
     (i32.const 16)
    )
   )
   (i64.load
    (get_local $0)
   )
  )
  (i64.store offset=232
   (get_local $13)
   (i64.load offset=56
    (get_local $13)
   )
  )
  (i64.store offset=224
   (get_local $13)
   (i64.load offset=48
    (get_local $13)
   )
  )
  (i64.store
   (tee_local $2
    (call $_Znwj
     (i32.const 16)
    )
   )
   (get_local $7)
  )
  (i64.store offset=8
   (get_local $2)
   (get_local $11)
  )
  (i32.store offset=304
   (get_local $13)
   (get_local $2)
  )
  (i32.store offset=312
   (get_local $13)
   (tee_local $2
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=264
   (get_local $13)
   (get_local $7)
  )
  (i64.store offset=256
   (get_local $13)
   (get_local $7)
  )
  (i32.store offset=308
   (get_local $13)
   (get_local $2)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 256)
    )
    (i32.const 24)
   )
   (i64.load offset=232
    (get_local $13)
   )
  )
  (i64.store
   (i32.add
    (get_local $13)
    (i32.const 296)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $13)
    (i32.const 288)
   )
   (i64.load
    (get_local $4)
   )
  )
  (i64.store offset=272
   (get_local $13)
   (i64.load offset=224
    (get_local $13)
   )
  )
  (call $_ZN5eosio15dispatch_inlineIJNS_4nameES1_11checksum256EEEvyyNSt3__16vectorINS_16permission_levelENS3_9allocatorIS5_EEEENS3_5tupleIJDpT_EEE
   (get_local $6)
   (i64.const 4157834736711286784)
   (i32.add
    (tee_local $4
     (call $memcpy
      (get_local $13)
      (i32.add
       (get_local $13)
       (i32.const 256)
      )
      (i32.const 48)
     )
    )
    (i32.const 304)
   )
   (get_local $4)
  )
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (tee_local $2
      (i32.load offset=304
       (get_local $4)
      )
     )
    )
   )
   (i32.store offset=308
    (get_local $4)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (block $label$13
   (br_if $label$13
    (i32.eqz
     (tee_local $3
      (i32.load offset=176
       (get_local $4)
      )
     )
    )
   )
   (block $label$14
    (block $label$15
     (br_if $label$15
      (i32.eq
       (tee_local $13
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $4)
           (i32.const 180)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$16
      (set_local $2
       (i32.load
        (tee_local $13
         (i32.add
          (get_local $13)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $13)
       (i32.const 0)
      )
      (block $label$17
       (br_if $label$17
        (i32.eqz
         (get_local $2)
        )
       )
       (block $label$18
        (br_if $label$18
         (i32.eqz
          (tee_local $0
           (i32.load offset=32
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 36)
         )
         (get_local $0)
        )
        (call $_ZdlPv
         (get_local $0)
        )
       )
       (block $label$19
        (br_if $label$19
         (i32.eqz
          (tee_local $0
           (i32.load offset=20
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 24)
         )
         (get_local $0)
        )
        (call $_ZdlPv
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$16
       (i32.ne
        (get_local $3)
        (get_local $13)
       )
      )
     )
     (set_local $2
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 176)
       )
      )
     )
     (br $label$14)
    )
    (set_local $2
     (get_local $3)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 320)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=20
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=16
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=24
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i64.store
    (tee_local $6
     (call $_Znwj
      (i32.const 56)
     )
    )
    (i64.const 0)
   )
   (i64.store offset=12 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=20 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=28 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=36 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=44
    (get_local $6)
    (get_local $0)
   )
   (i32.store offset=32
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
   (i32.store offset=44
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
   (i32.store offset=40
    (get_local $8)
    (get_local $6)
   )
   (i32.store offset=48
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 12)
    )
   )
   (i32.store offset=52
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 20)
    )
   )
   (i32.store offset=60
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio4nameERhRmS9_RNSt3__16vectorIN5types9st_commitENSA_9allocatorISD_EEEERNSB_INSC_11st_pet_statENSE_ISI_EEEEEEEZNS5_rsINS5_10datastreamIPKcEENSC_9st_battleELPv0EEERT_SV_RT0_EUlSV_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSV_OSW_NSA_16integer_sequenceIjJXspT1_EEEENSA_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
   (i32.store offset=48
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=40
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=48
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=32
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERNS1_4nameERlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $8)
      (i32.const 40)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=32
     (get_local $8)
    )
   )
   (i32.store offset=32
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (tee_local $7
       (i32.load offset=32
        (get_local $4)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $4)
      (i32.const 36)
     )
     (get_local $7)
    )
    (call $_ZdlPv
     (get_local $7)
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (tee_local $7
       (i32.load offset=20
        (get_local $4)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $4)
      (i32.const 24)
     )
     (get_local $7)
    )
    (call $_ZdlPv
     (get_local $7)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (get_local $6)
 )
 (func $_ZZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE7emplaceIZN3pet12battlecreateENS_4nameEh11checksum256E3$_4EENS3_14const_iteratorEyOT_ENKUlRSA_E_clINS3_4itemEEEDaSC_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (set_local $12
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $10
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i32.store8 offset=8
   (get_local $1)
   (i32.load8_u
    (i32.load offset=4
     (get_local $10)
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 20)
   )
  )
  (set_local $3
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (i32.div_s
     (tee_local $8
      (i32.sub
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 24)
         )
        )
       )
       (tee_local $6
        (i32.load offset=20
         (get_local $1)
        )
       )
      )
     )
     (i32.const 80)
    )
   )
  )
  (set_local $10
   (i32.const 89)
  )
  (loop $label$0
   (set_local $10
    (i32.add
     (get_local $10)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eq
      (get_local $6)
      (get_local $5)
     )
    )
    (set_local $10
     (i32.add
      (i32.mul
       (i32.div_u
        (i32.add
         (get_local $8)
         (i32.const -80)
        )
        (i32.const 80)
       )
       (i32.const 72)
      )
      (get_local $10)
     )
    )
    (br $label$1)
   )
   (set_local $10
    (i32.add
     (get_local $10)
     (i32.const -72)
    )
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $8
      (i32.sub
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 36)
         )
        )
       )
       (tee_local $6
        (i32.load
         (get_local $7)
        )
       )
      )
     )
     (i32.const 5)
    )
   )
  )
  (loop $label$3
   (set_local $10
    (i32.add
     (get_local $10)
     (i32.const 1)
    )
   )
   (br_if $label$3
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eq
     (get_local $6)
     (get_local $5)
    )
   )
   (set_local $10
    (i32.add
     (i32.add
      (i32.mul
       (i32.shr_u
        (i32.add
         (get_local $8)
         (i32.const -32)
        )
        (i32.const 5)
       )
       (i32.const 18)
      )
      (get_local $10)
     )
     (i32.const 18)
    )
   )
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $10)
      (i32.const 513)
     )
    )
    (set_local $11
     (call $malloc
      (get_local $10)
     )
    )
    (br $label$5)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $11
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $10)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $12)
   (get_local $11)
  )
  (i32.store
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=8
   (get_local $12)
   (i32.add
    (get_local $11)
    (get_local $10)
   )
  )
  (i32.store offset=16
   (get_local $12)
   (get_local $12)
  )
  (i32.store offset=28
   (get_local $12)
   (get_local $3)
  )
  (i32.store offset=24
   (get_local $12)
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (i32.store offset=36
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (i32.store offset=40
   (get_local $12)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $12)
   (get_local $7)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio4nameERKhRKmSC_RKNSt3__16vectorIN5types9st_commitENSD_9allocatorISG_EEEERKNSE_INSF_11st_pet_statENSH_ISM_EEEEEEEZNS5_lsINS5_10datastreamIPcEENSF_9st_battleELPv0EEERT_SZ_RKT0_EUlRKSY_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSZ_OS10_NSD_16integer_sequenceIjJXspT1_EEEENSD_17integral_constantIbLb0EEE
   (i32.add
    (get_local $12)
    (i32.const 24)
   )
   (i32.add
    (get_local $12)
    (i32.const 16)
   )
  )
  (i32.store offset=48
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const 4157834741199929344)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $9
     (i64.load
      (get_local $1)
     )
    )
    (get_local $11)
    (get_local $10)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.lt_u
     (get_local $10)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $11)
   )
  )
  (block $label$8
   (br_if $label$8
    (i64.lt_u
     (get_local $9)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $9)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $9)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 48)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERNS1_4nameERlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $2
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $2)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (tee_local $6
         (i32.load offset=32
          (get_local $1)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $1)
        (i32.const 36)
       )
       (get_local $6)
      )
      (call $_ZdlPv
       (get_local $6)
      )
     )
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (tee_local $6
         (i32.load offset=20
          (get_local $1)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $1)
        (i32.const 24)
       )
       (get_local $6)
      )
      (call $_ZdlPv
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $2)
      (get_local $7)
     )
    )
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
 )
 (func $_ZN5eosio15dispatch_inlineIJNS_4nameES1_11checksum256EEEvyyNSt3__16vectorINS_16permission_levelENS3_9allocatorIS5_EEEENS3_5tupleIJDpT_EEE (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=16
   (get_local $9)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $8
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $5
       (i32.shr_s
        (tee_local $4
         (i32.sub
          (i32.load offset=4
           (get_local $2)
          )
          (i32.load
           (get_local $2)
          )
         )
        )
        (i32.const 4)
       )
      )
     )
    )
    (br_if $label$0
     (i32.ge_u
      (get_local $5)
      (i32.const 268435456)
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 16)
     )
     (tee_local $6
      (i32.add
       (tee_local $8
        (call $_Znwj
         (get_local $4)
        )
       )
       (i32.shl
        (get_local $5)
        (i32.const 4)
       )
      )
     )
    )
    (i32.store offset=8
     (get_local $9)
     (get_local $8)
    )
    (i32.store offset=12
     (get_local $9)
     (get_local $8)
    )
    (block $label$2
     (br_if $label$2
      (i32.lt_s
       (tee_local $2
        (i32.sub
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 4)
          )
         )
         (tee_local $7
          (i32.load
           (get_local $2)
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $8)
       (get_local $7)
       (get_local $2)
      )
     )
     (i32.store offset=12
      (get_local $9)
      (tee_local $7
       (i32.add
        (get_local $8)
        (get_local $2)
       )
      )
     )
     (br $label$1)
    )
    (set_local $7
     (get_local $8)
    )
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 44)
    )
    (get_local $7)
   )
   (i64.store offset=32
    (get_local $9)
    (get_local $1)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i32.const 8)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 48)
    )
    (get_local $6)
   )
   (i64.store offset=24
    (get_local $9)
    (get_local $0)
   )
   (i32.store offset=40
    (get_local $9)
    (get_local $8)
   )
   (i64.store offset=8
    (get_local $9)
    (i64.const 0)
   )
   (i32.store offset=52
    (get_local $9)
    (i32.const 0)
   )
   (i32.store
    (tee_local $8
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 24)
      )
      (i32.const 32)
     )
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 60)
    )
    (i32.const 0)
   )
   (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
    (i32.add
     (get_local $9)
     (i32.const 52)
    )
    (i32.const 48)
   )
   (call $eosio_assert
    (i32.gt_s
     (tee_local $2
      (i32.sub
       (i32.load
        (get_local $8)
       )
       (tee_local $8
        (i32.load offset=52
         (get_local $9)
        )
       )
      )
     )
     (i32.const 7)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (get_local $8)
     (get_local $3)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.add
      (get_local $2)
      (i32.const -8)
     )
     (i32.const 7)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.add
      (get_local $2)
      (i32.const -16)
     )
     (i32.const 31)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $3)
      (i32.const 16)
     )
     (i32.const 32)
    )
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (i32.add
     (get_local $9)
     (i32.const 64)
    )
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
   )
   (call $send_inline
    (tee_local $8
     (i32.load offset=64
      (get_local $9)
     )
    )
    (i32.sub
     (i32.load offset=68
      (get_local $9)
     )
     (get_local $8)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (tee_local $8
       (i32.load offset=64
        (get_local $9)
       )
      )
     )
    )
    (i32.store offset=68
     (get_local $9)
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (tee_local $8
       (i32.load offset=52
        (get_local $9)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 56)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $8
       (i32.load offset=40
        (get_local $9)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 44)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $8
       (i32.load offset=8
        (get_local $9)
       )
      )
     )
    )
    (i32.store offset=12
     (get_local $9)
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $9)
     (i32.const 80)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (unreachable)
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (set_local $5
   (i32.const 16)
  )
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $4
      (i32.sub
       (tee_local $7
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (tee_local $3
        (i32.load offset=16
         (get_local $1)
        )
       )
      )
     )
     (i32.const 4)
    )
   )
  )
  (loop $label$0
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (get_local $3)
     (get_local $7)
    )
   )
   (set_local $5
    (i32.add
     (i32.and
      (get_local $4)
      (i32.const -16)
     )
     (get_local $5)
    )
   )
  )
  (set_local $5
   (i32.sub
    (i32.sub
     (tee_local $7
      (i32.load offset=28
       (get_local $1)
      )
     )
     (get_local $5)
    )
    (tee_local $3
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 32)
      )
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.sub
     (get_local $3)
     (get_local $7)
    )
   )
  )
  (loop $label$2
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $5)
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $0)
     (i32.sub
      (i32.const 0)
      (get_local $5)
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $5
     (i32.load
      (get_local $0)
     )
    )
    (br $label$3)
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $7)
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (tee_local $0
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $8)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
    (call $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (get_local $8)
     (get_local $2)
    )
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 4)
    )
   )
  )
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (loop $label$0
   (set_local $3
    (i32.wrap/i64
     (get_local $4)
    )
   )
   (i32.store8 offset=15
    (get_local $7)
    (i32.or
     (i32.shl
      (tee_local $6
       (i64.ne
        (tee_local $4
         (i64.shr_u
          (get_local $4)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $3)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $2)
      )
      (get_local $5)
     )
     (i32.const 0)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $3
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $6)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $6
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (get_local $6)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $2)
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i32.ge_s
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $6)
    )
    (tee_local $5
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load
     (tee_local $6
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $2)
    (get_local $5)
   )
  )
  (i32.store
   (get_local $6)
   (i32.add
    (i32.load
     (get_local $6)
    )
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio4nameERKhRKmSC_RKNSt3__16vectorIN5types9st_commitENSD_9allocatorISG_EEEERKNSE_INSF_11st_pet_statENSH_ISM_EEEEEEEZNS5_lsINS5_10datastreamIPcEENSF_9st_battleELPv0EEERT_SZ_RKT0_EUlRKSY_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSZ_OS10_NSD_16integer_sequenceIjJXspT1_EEEENSD_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEN5types9st_commitEEERT_S7_RKNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=16
     (get_local $0)
    )
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEN5types11st_pet_statEEERT_S7_RKNSt3__16vectorIT0_NS8_9allocatorISA_EEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=20
     (get_local $0)
    )
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEN5types9st_commitEEERT_S7_RKNSt3__16vectorIT0_NS8_9allocatorISA_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (i32.div_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 80)
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $7
    (i32.wrap/i64
     (get_local $5)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $2
       (i64.ne
        (tee_local $5
         (i64.shr_u
          (get_local $5)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $7)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $3)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $4)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $4)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $2)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $7
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $6)
      )
      (i32.const 7)
     )
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $4)
      )
      (get_local $7)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $6
      (i32.add
       (i32.load
        (get_local $4)
       )
       (i32.const 8)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $2)
       )
       (get_local $6)
      )
      (i32.const 31)
     )
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $4)
      )
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.const 32)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $6
      (i32.add
       (i32.load
        (get_local $4)
       )
       (i32.const 32)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $2)
       )
       (get_local $6)
      )
      (i32.const 31)
     )
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $4)
      )
      (i32.add
       (get_local $7)
       (i32.const 48)
      )
      (i32.const 32)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $6
      (i32.add
       (i32.load
        (get_local $4)
       )
       (i32.const 32)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const 80)
       )
      )
      (get_local $3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEN5types11st_pet_statEEERT_S7_RKNSt3__16vectorIT0_NS8_9allocatorISA_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 5)
    )
   )
  )
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $7
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $6)
    )
   )
   (i32.store8 offset=16
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $6
         (i64.shr_u
          (get_local $6)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $5)
     )
     (i32.const 0)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $7)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $7)
    (tee_local $5
     (i32.add
      (i32.load
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $7
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $8)
     (i32.const 28)
    )
   )
   (loop $label$2
    (i32.store offset=8
     (get_local $8)
     (get_local $0)
    )
    (i32.store offset=16
     (get_local $8)
     (get_local $7)
    )
    (i32.store
     (i32.add
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.const 8)
     )
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
    )
    (i32.store
     (get_local $2)
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
    )
    (i32.store offset=20
     (get_local $8)
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
    (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKhRKN5eosio4nameES8_EEEZNS9_lsINS9_10datastreamIPcEEN5types11st_pet_statELPv0EEERT_SM_RKT0_EUlRKSL_E_JLj0ELj1ELj2ELj3EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSU_17integral_constantIbLb0EEE
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
      (get_local $5)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKhRKN5eosio4nameES8_EEEZNS9_lsINS9_10datastreamIPcEEN5types11st_pet_statELPv0EEERT_SM_RKT0_EUlRKSL_E_JLj0ELj1ELj2ELj3EEEEvSM_OSN_NSt3__116integer_sequenceIjJXspT1_EEEENSU_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $2)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio4nameERhRmS9_RNSt3__16vectorIN5types9st_commitENSA_9allocatorISD_EEEERNSB_INSC_11st_pet_statENSE_ISI_EEEEEEEZNS5_rsINS5_10datastreamIPKcEENSC_9st_battleELPv0EEERT_SV_RT0_EUlSV_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSV_OSW_NSA_16integer_sequenceIjJXspT1_EEEENSA_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEN5types9st_commitEEERT_S8_RNSt3__16vectorIT0_NS9_9allocatorISB_EEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=16
     (get_local $0)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEN5types11st_pet_statEEERT_S8_RNSt3__16vectorIT0_NS9_9allocatorISB_EEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=20
     (get_local $0)
    )
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEN5types9st_commitEEERT_S8_RNSt3__16vectorIT0_NS9_9allocatorISB_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (set_local $7
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $7)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 896)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $7
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $7
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $6
        (i32.and
         (get_local $6)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $5)
    )
   )
   (set_local $6
    (i32.add
     (get_local $6)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.le_u
       (tee_local $4
        (i32.wrap/i64
         (get_local $5)
        )
       )
       (tee_local $6
        (i32.div_s
         (i32.sub
          (tee_local $2
           (i32.load offset=4
            (get_local $1)
           )
          )
          (tee_local $7
           (i32.load
            (get_local $1)
           )
          )
         )
         (i32.const 80)
        )
       )
      )
     )
     (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE8__appendEj
      (get_local $1)
      (i32.sub
       (get_local $4)
       (get_local $6)
      )
     )
     (br_if $label$2
      (i32.ne
       (tee_local $7
        (i32.load
         (get_local $1)
        )
       )
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
      )
     )
     (br $label$1)
    )
    (block $label$4
     (br_if $label$4
      (i32.ge_u
       (get_local $4)
       (get_local $6)
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
      (tee_local $2
       (i32.add
        (get_local $7)
        (i32.mul
         (get_local $4)
         (i32.const 80)
        )
       )
      )
     )
    )
    (br_if $label$1
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
   )
   (set_local $3
    (i32.load
     (tee_local $4
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
   )
   (loop $label$5
    (call $eosio_assert
     (i32.gt_u
      (i32.sub
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $3)
      )
      (i32.const 7)
     )
     (i32.const 512)
    )
    (drop
     (call $memcpy
      (get_local $7)
      (i32.load
       (get_local $4)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $3
      (i32.add
       (i32.load
        (get_local $4)
       )
       (i32.const 8)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_u
      (i32.sub
       (i32.load
        (get_local $6)
       )
       (get_local $3)
      )
      (i32.const 31)
     )
     (i32.const 512)
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (get_local $4)
      )
      (i32.const 32)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $3
      (i32.add
       (i32.load
        (get_local $4)
       )
       (i32.const 32)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_u
      (i32.sub
       (i32.load
        (get_local $6)
       )
       (get_local $3)
      )
      (i32.const 31)
     )
     (i32.const 512)
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $7)
       (i32.const 48)
      )
      (i32.load
       (get_local $4)
      )
      (i32.const 32)
     )
    )
    (i32.store
     (get_local $4)
     (tee_local $3
      (i32.add
       (i32.load
        (get_local $4)
       )
       (i32.const 32)
      )
     )
    )
    (br_if $label$5
     (i32.ne
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const 80)
       )
      )
      (get_local $2)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEN5types11st_pet_statEEERT_S8_RNSt3__16vectorIT0_NS9_9allocatorISB_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $4
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $4)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 896)
   )
   (set_local $7
    (i32.load8_u
     (tee_local $4
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $7)
        (i32.const 127)
       )
       (tee_local $6
        (i32.and
         (get_local $6)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $5)
    )
   )
   (set_local $6
    (i32.add
     (get_local $6)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $7)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.le_u
       (tee_local $6
        (i32.wrap/i64
         (get_local $5)
        )
       )
       (tee_local $3
        (i32.shr_s
         (i32.sub
          (tee_local $4
           (i32.load offset=4
            (get_local $1)
           )
          )
          (tee_local $7
           (i32.load
            (get_local $1)
           )
          )
         )
         (i32.const 5)
        )
       )
      )
     )
     (call $_ZNSt3__16vectorIN5types11st_pet_statENS_9allocatorIS2_EEE8__appendEj
      (get_local $1)
      (i32.sub
       (get_local $6)
       (get_local $3)
      )
     )
     (br_if $label$2
      (i32.ne
       (tee_local $7
        (i32.load
         (get_local $1)
        )
       )
       (tee_local $4
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
      )
     )
     (br $label$1)
    )
    (block $label$4
     (br_if $label$4
      (i32.ge_u
       (get_local $6)
       (get_local $3)
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
      (tee_local $4
       (i32.add
        (get_local $7)
        (i32.shl
         (get_local $6)
         (i32.const 5)
        )
       )
      )
     )
    )
    (br_if $label$1
     (i32.eq
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $8)
     (i32.const 28)
    )
   )
   (loop $label$5
    (i32.store offset=8
     (get_local $8)
     (get_local $0)
    )
    (i32.store offset=16
     (get_local $8)
     (get_local $7)
    )
    (i32.store
     (i32.add
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.const 8)
     )
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
    )
    (i32.store offset=20
     (get_local $8)
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
    )
    (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRhRN5eosio4nameES6_EEEZNS7_rsINS7_10datastreamIPKcEEN5types11st_pet_statELPv0EEERT_SK_RT0_EUlSK_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSP_17integral_constantIbLb0EEE
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (br_if $label$5
     (i32.ne
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
      (get_local $4)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5types11st_pet_statENS_9allocatorIS2_EEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i32.ge_u
          (i32.shr_s
           (i32.sub
            (tee_local $2
             (i32.load offset=8
              (get_local $0)
             )
            )
            (tee_local $6
             (i32.load offset=4
              (get_local $0)
             )
            )
           )
           (i32.const 5)
          )
          (get_local $1)
         )
        )
        (br_if $label$3
         (i32.ge_u
          (tee_local $4
           (i32.add
            (tee_local $3
             (i32.shr_s
              (i32.sub
               (get_local $6)
               (tee_local $5
                (i32.load
                 (get_local $0)
                )
               )
              )
              (i32.const 5)
             )
            )
            (get_local $1)
           )
          )
          (i32.const 134217728)
         )
        )
        (set_local $6
         (i32.const 134217727)
        )
        (block $label$6
         (br_if $label$6
          (i32.gt_u
           (i32.shr_s
            (tee_local $2
             (i32.sub
              (get_local $2)
              (get_local $5)
             )
            )
            (i32.const 5)
           )
           (i32.const 67108862)
          )
         )
         (br_if $label$4
          (i32.eqz
           (tee_local $6
            (select
             (get_local $4)
             (tee_local $6
              (i32.shr_s
               (get_local $2)
               (i32.const 4)
              )
             )
             (i32.lt_u
              (get_local $6)
              (get_local $4)
             )
            )
           )
          )
         )
         (br_if $label$2
          (i32.ge_u
           (get_local $6)
           (i32.const 134217728)
          )
         )
        )
        (set_local $2
         (call $_Znwj
          (i32.shl
           (get_local $6)
           (i32.const 5)
          )
         )
        )
        (br $label$1)
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (loop $label$7
        (i64.store
         (get_local $6)
         (i64.const 0)
        )
        (i64.store
         (i32.add
          (get_local $6)
          (i32.const 24)
         )
         (i64.const 0)
        )
        (i64.store
         (i32.add
          (get_local $6)
          (i32.const 16)
         )
         (i64.const 0)
        )
        (i64.store
         (i32.add
          (get_local $6)
          (i32.const 8)
         )
         (i64.const 0)
        )
        (i32.store
         (get_local $0)
         (tee_local $6
          (i32.add
           (i32.load
            (get_local $0)
           )
           (i32.const 32)
          )
         )
        )
        (br_if $label$7
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const -1)
          )
         )
        )
        (br $label$0)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (set_local $2
       (i32.const 0)
      )
      (br $label$1)
     )
     (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
      (get_local $0)
     )
     (unreachable)
    )
    (call $abort)
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $6)
      (i32.const 5)
     )
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 5)
      )
     )
    )
   )
   (loop $label$8
    (i64.store
     (get_local $6)
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $6)
      (i32.const 24)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (i64.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 32)
     )
    )
    (br_if $label$8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRhRN5eosio4nameES6_EEEZNS7_rsINS7_10datastreamIPKcEEN5types11st_pet_statELPv0EEERT_SK_RT0_EUlSK_E_JLj0ELj1ELj2ELj3EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSP_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $0
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.div_s
          (i32.sub
           (tee_local $2
            (i32.load offset=8
             (get_local $0)
            )
           )
           (tee_local $6
            (i32.load offset=4
             (get_local $0)
            )
           )
          )
          (i32.const 80)
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.ge_u
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.div_s
             (i32.sub
              (get_local $6)
              (tee_local $5
               (i32.load
                (get_local $0)
               )
              )
             )
             (i32.const 80)
            )
           )
           (get_local $1)
          )
         )
         (i32.const 53687092)
        )
       )
       (set_local $6
        (i32.const 53687091)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.div_s
            (i32.sub
             (get_local $2)
             (get_local $5)
            )
            (i32.const 80)
           )
          )
          (i32.const 26843544)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (i32.mul
          (get_local $6)
          (i32.const 80)
         )
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i64.store
        (call $memset
         (get_local $6)
         (i32.const 0)
         (i32.const 80)
        )
        (i64.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 80)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (i32.mul
      (get_local $6)
      (i32.const 80)
     )
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (i32.mul
       (get_local $3)
       (i32.const 80)
      )
     )
    )
   )
   (loop $label$7
    (i64.store
     (tee_local $6
      (call $memset
       (get_local $6)
       (i32.const 0)
       (i32.const 80)
      )
     )
     (i64.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 80)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.mul
      (i32.div_s
       (tee_local $2
        (i32.sub
         (i32.load
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
          )
         )
         (tee_local $1
          (i32.load
           (get_local $0)
          )
         )
        )
       )
       (i32.const -80)
      )
      (i32.const 80)
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN3pet10battlejoinEN5eosio4nameES1_11checksum256 (type $FUNCSIG$vijji) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 88)
   )
   (i32.const 0)
  )
  (i64.store offset=72
   (get_local $12)
   (i64.const -1)
  )
  (i64.store offset=80
   (get_local $12)
   (i64.const 0)
  )
  (i64.store offset=56
   (get_local $12)
   (tee_local $7
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=64
   (get_local $12)
   (get_local $7)
  )
  (set_local $9
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (get_local $7)
       (get_local $7)
       (i64.const 4157834741199929344)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (tee_local $9
       (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $12)
         (i32.const 56)
        )
        (get_local $5)
       )
      )
     )
     (i32.add
      (get_local $12)
      (i32.const 56)
     )
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $4
    (i32.ne
     (get_local $9)
     (i32.const 0)
    )
   )
   (i32.const 1104)
  )
  (set_local $10
   (i32.const 1)
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $5
      (i32.load offset=20
       (tee_local $6
        (call $_ZN5types9st_battleC2ERKS0_
         (i32.add
          (get_local $12)
          (i32.const 8)
         )
         (get_local $9)
        )
       )
      )
     )
     (tee_local $11
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $6)
         (i32.const 24)
        )
       )
      )
     )
    )
   )
   (block $label$2
    (loop $label$3
     (br_if $label$2
      (i64.eq
       (i64.load
        (get_local $5)
       )
       (get_local $2)
      )
     )
     (br_if $label$3
      (i32.ne
       (get_local $11)
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 80)
        )
       )
      )
     )
     (br $label$1)
    )
   )
   (set_local $10
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $10)
   (i32.const 1152)
  )
  (call $eosio_assert
   (i32.lt_u
    (i32.div_s
     (i32.sub
      (i32.load
       (get_local $8)
      )
      (i32.load offset=20
       (get_local $6)
      )
     )
     (i32.const 80)
    )
    (i32.const 2)
   )
   (i32.const 1200)
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 140)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 28)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 136)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 132)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $12)
    (i32.const 128)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 12)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $3)
     (i32.const 4)
    )
   )
  )
  (i64.store offset=96
   (get_local $12)
   (get_local $2)
  )
  (i32.store offset=112
   (get_local $12)
   (i32.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $12)
    (i32.const 168)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $12)
    (i32.const 160)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $12)
    (i32.const 152)
   )
   (i64.const 0)
  )
  (i64.store offset=144
   (get_local $12)
   (i64.const 0)
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.ge_u
      (tee_local $5
       (i32.load
        (get_local $8)
       )
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 28)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $6)
      (i32.const 24)
     )
     (i32.add
      (call $memcpy
       (get_local $5)
       (i32.add
        (get_local $12)
        (i32.const 96)
       )
       (i32.const 80)
      )
      (i32.const 80)
     )
    )
    (br $label$4)
   )
   (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_
    (i32.add
     (get_local $6)
     (i32.const 20)
    )
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
   )
  )
  (set_local $2
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=96
   (get_local $12)
   (get_local $6)
  )
  (call $eosio_assert
   (get_local $4)
   (i32.const 80)
  )
  (call $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet10battlejoinENS_4nameES6_11checksum256E3$_5EEvRKS2_yOT_
   (i32.add
    (get_local $12)
    (i32.const 56)
   )
   (get_local $9)
   (get_local $2)
   (i32.add
    (get_local $12)
    (i32.const 96)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $6)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $6)
     (i32.const 36)
    )
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (tee_local $5
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 20)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $6)
     (i32.const 24)
    )
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (tee_local $3
      (i32.load offset=80
       (get_local $12)
      )
     )
    )
   )
   (block $label$9
    (block $label$10
     (br_if $label$10
      (i32.eq
       (tee_local $11
        (i32.load
         (tee_local $9
          (i32.add
           (get_local $12)
           (i32.const 84)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$11
      (set_local $5
       (i32.load
        (tee_local $11
         (i32.add
          (get_local $11)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $11)
       (i32.const 0)
      )
      (block $label$12
       (br_if $label$12
        (i32.eqz
         (get_local $5)
        )
       )
       (block $label$13
        (br_if $label$13
         (i32.eqz
          (tee_local $6
           (i32.load offset=32
            (get_local $5)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $5)
          (i32.const 36)
         )
         (get_local $6)
        )
        (call $_ZdlPv
         (get_local $6)
        )
       )
       (block $label$14
        (br_if $label$14
         (i32.eqz
          (tee_local $6
           (i32.load offset=20
            (get_local $5)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $5)
          (i32.const 24)
         )
         (get_local $6)
        )
        (call $_ZdlPv
         (get_local $6)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$11
       (i32.ne
        (get_local $3)
        (get_local $11)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $12)
        (i32.const 80)
       )
      )
     )
     (br $label$9)
    )
    (set_local $5
     (get_local $3)
    )
   )
   (i32.store
    (get_local $9)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 176)
   )
  )
 )
 (func $_ZN5types9st_battleC2ERKS0_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i64.store
   (get_local $0)
   (i64.load
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=20 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (i32.const 0)
  )
  (set_local $3
   (i32.div_s
    (tee_local $2
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 24)
       )
      )
      (i32.load offset=20
       (get_local $1)
      )
     )
    )
    (i32.const 80)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (get_local $2)
      )
     )
     (br_if $label$1
      (i32.ge_u
       (get_local $3)
       (i32.const 53687092)
      )
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 20)
      )
      (tee_local $2
       (call $_Znwj
        (get_local $2)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 28)
      )
      (i32.add
       (get_local $2)
       (i32.mul
        (get_local $3)
        (i32.const 80)
       )
      )
     )
     (i32.store
      (tee_local $3
       (i32.add
        (get_local $0)
        (i32.const 24)
       )
      )
      (get_local $2)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $5
        (i32.sub
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 24)
          )
         )
         (tee_local $4
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 20)
           )
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $2)
       (get_local $4)
       (get_local $5)
      )
     )
     (i32.store
      (get_local $3)
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.mul
        (i32.div_u
         (get_local $5)
         (i32.const 80)
        )
        (i32.const 80)
       )
      )
     )
    )
    (i64.store offset=32 align=4
     (get_local $0)
     (i64.const 0)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 40)
     )
     (i32.const 0)
    )
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (tee_local $3
        (i32.shr_s
         (tee_local $2
          (i32.sub
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 36)
            )
           )
           (i32.load offset=32
            (get_local $1)
           )
          )
         )
         (i32.const 5)
        )
       )
      )
     )
     (br_if $label$0
      (i32.ge_u
       (get_local $3)
       (i32.const 134217728)
      )
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
      (tee_local $2
       (call $_Znwj
        (get_local $2)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 40)
      )
      (i32.add
       (get_local $2)
       (i32.shl
        (get_local $3)
        (i32.const 5)
       )
      )
     )
     (i32.store
      (tee_local $3
       (i32.add
        (get_local $0)
        (i32.const 36)
       )
      )
      (get_local $2)
     )
     (br_if $label$3
      (i32.lt_s
       (tee_local $1
        (i32.sub
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 36)
          )
         )
         (tee_local $5
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 32)
           )
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $2)
       (get_local $5)
       (get_local $1)
      )
     )
     (i32.store
      (get_local $3)
      (i32.add
       (i32.load
        (get_local $3)
       )
       (get_local $1)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (i32.add
     (get_local $0)
     (i32.const 20)
    )
   )
   (unreachable)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
  )
  (unreachable)
 )
 (func $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $7
       (i32.add
        (tee_local $2
         (i32.div_s
          (i32.sub
           (tee_local $5
            (i32.load offset=4
             (get_local $0)
            )
           )
           (tee_local $4
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 80)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 53687092)
     )
    )
    (set_local $6
     (i32.const 53687091)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $3
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $4)
          )
          (i32.const 80)
         )
        )
        (i32.const 26843544)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $6
         (select
          (get_local $7)
          (tee_local $6
           (i32.shl
            (get_local $3)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $6)
           (get_local $7)
          )
         )
        )
       )
      )
     )
     (set_local $7
      (call $_Znwj
       (i32.mul
        (get_local $6)
        (i32.const 80)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (set_local $4
      (i32.load
       (get_local $0)
      )
     )
     (br $label$0)
    )
    (set_local $6
     (i32.const 0)
    )
    (set_local $7
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $1
   (i32.add
    (tee_local $2
     (call $memcpy
      (i32.add
       (get_local $7)
       (i32.mul
        (get_local $2)
        (i32.const 80)
       )
      )
      (get_local $1)
      (i32.const 80)
     )
    )
    (i32.mul
     (i32.div_s
      (tee_local $5
       (i32.sub
        (get_local $5)
        (get_local $4)
       )
      )
      (i32.const -80)
     )
     (i32.const 80)
    )
   )
  )
  (set_local $6
   (i32.add
    (get_local $7)
    (i32.mul
     (get_local $6)
     (i32.const 80)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_s
     (get_local $5)
     (i32.const 1)
    )
   )
   (drop
    (call $memcpy
     (get_local $1)
     (get_local $4)
     (get_local $5)
    )
   )
   (set_local $4
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $7)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $6)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet10battlejoinENS_4nameES6_11checksum256E3$_5EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (set_local $12
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=44
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 20)
   )
  )
  (set_local $10
   (tee_local $4
    (i64.load
     (get_local $1)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $3
      (i32.load
       (get_local $3)
      )
     )
     (get_local $1)
    )
   )
   (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (get_local $5)
    (i32.load offset=20
     (get_local $3)
    )
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
   )
   (set_local $10
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (get_local $10)
   )
   (i32.const 416)
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.div_s
     (tee_local $9
      (i32.sub
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 24)
         )
        )
       )
       (tee_local $7
        (i32.load
         (get_local $5)
        )
       )
      )
     )
     (i32.const 80)
    )
   )
  )
  (set_local $3
   (i32.const 89)
  )
  (loop $label$1
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $6)
     )
    )
    (set_local $3
     (i32.add
      (i32.mul
       (i32.div_u
        (i32.add
         (get_local $9)
         (i32.const -80)
        )
        (i32.const 80)
       )
       (i32.const 72)
      )
      (get_local $3)
     )
    )
    (br $label$2)
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const -72)
    )
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $9
      (i32.sub
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 36)
         )
        )
       )
       (tee_local $7
        (i32.load
         (get_local $8)
        )
       )
      )
     )
     (i32.const 5)
    )
   )
  )
  (loop $label$4
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (set_local $3
    (i32.add
     (i32.add
      (i32.mul
       (i32.shr_u
        (i32.add
         (get_local $9)
         (i32.const -32)
        )
        (i32.const 5)
       )
       (i32.const 18)
      )
      (get_local $3)
     )
     (i32.const 18)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.lt_u
      (get_local $3)
      (i32.const 513)
     )
    )
    (set_local $11
     (call $malloc
      (get_local $3)
     )
    )
    (br $label$6)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $11
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $3)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $12)
   (get_local $11)
  )
  (i32.store
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=8
   (get_local $12)
   (i32.add
    (get_local $11)
    (get_local $3)
   )
  )
  (i32.store offset=16
   (get_local $12)
   (get_local $12)
  )
  (i32.store offset=40
   (get_local $12)
   (get_local $5)
  )
  (i32.store offset=44
   (get_local $12)
   (get_local $8)
  )
  (i32.store offset=24
   (get_local $12)
   (get_local $1)
  )
  (i32.store offset=28
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=32
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (i32.store offset=36
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio4nameERKhRKmSC_RKNSt3__16vectorIN5types9st_commitENSD_9allocatorISG_EEEERKNSE_INSF_11st_pet_statENSH_ISM_EEEEEEEZNS5_lsINS5_10datastreamIPcEENSF_9st_battleELPv0EEERT_SZ_RKT0_EUlRKSY_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSZ_OS10_NSD_16integer_sequenceIjJXspT1_EEEENSD_17integral_constantIbLb0EEE
   (i32.add
    (get_local $12)
    (i32.const 24)
   )
   (i32.add
    (get_local $12)
    (i32.const 16)
   )
  )
  (call $db_update_i64
   (i32.load offset=48
    (get_local $1)
   )
   (get_local $2)
   (get_local $11)
   (get_local $3)
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $11)
   )
  )
  (block $label$9
   (br_if $label$9
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 48)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.le_u
        (tee_local $4
         (i32.div_s
          (tee_local $3
           (i32.sub
            (get_local $2)
            (get_local $1)
           )
          )
          (i32.const 80)
         )
        )
        (i32.div_s
         (i32.sub
          (tee_local $8
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $5
           (i32.load
            (get_local $0)
           )
          )
         )
         (i32.const 80)
        )
       )
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (i32.store offset=4
        (get_local $0)
        (get_local $5)
       )
       (call $_ZdlPv
        (get_local $5)
       )
       (set_local $8
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.const 0)
       )
       (i64.store align=4
        (get_local $0)
        (i64.const 0)
       )
      )
      (br_if $label$0
       (i32.ge_u
        (get_local $4)
        (i32.const 53687092)
       )
      )
      (set_local $5
       (i32.const 53687091)
      )
      (block $label$5
       (br_if $label$5
        (i32.gt_u
         (tee_local $2
          (i32.div_s
           (get_local $8)
           (i32.const 80)
          )
         )
         (i32.const 26843544)
        )
       )
       (set_local $5
        (select
         (get_local $4)
         (tee_local $5
          (i32.shl
           (get_local $2)
           (i32.const 1)
          )
         )
         (i32.lt_u
          (get_local $5)
          (get_local $4)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (tee_local $5
        (call $_Znwj
         (tee_local $4
          (i32.mul
           (get_local $5)
           (i32.const 80)
          )
         )
        )
       )
      )
      (i32.store offset=4
       (get_local $0)
       (get_local $5)
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.add
        (get_local $5)
        (get_local $4)
       )
      )
      (br_if $label$2
       (i32.lt_s
        (get_local $3)
        (i32.const 1)
       )
      )
      (drop
       (call $memcpy
        (get_local $5)
        (get_local $1)
        (get_local $3)
       )
      )
      (i32.store
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.mul
         (i32.div_u
          (get_local $3)
          (i32.const 80)
         )
         (i32.const 80)
        )
       )
      )
      (return)
     )
     (set_local $7
      (i32.div_s
       (tee_local $8
        (i32.sub
         (tee_local $6
          (select
           (i32.add
            (get_local $1)
            (i32.mul
             (tee_local $3
              (i32.div_s
               (i32.sub
                (i32.load offset=4
                 (get_local $0)
                )
                (get_local $5)
               )
               (i32.const 80)
              )
             )
             (i32.const 80)
            )
           )
           (get_local $2)
           (i32.gt_u
            (get_local $4)
            (get_local $3)
           )
          )
         )
         (get_local $1)
        )
       )
       (i32.const 80)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (get_local $8)
       )
      )
      (drop
       (call $memmove
        (get_local $5)
        (get_local $1)
        (get_local $8)
       )
      )
     )
     (br_if $label$1
      (i32.le_u
       (get_local $4)
       (get_local $3)
      )
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $1
        (i32.sub
         (get_local $2)
         (get_local $6)
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (get_local $6)
       (get_local $1)
      )
     )
     (i32.store
      (get_local $0)
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.mul
        (i32.div_u
         (get_local $1)
         (i32.const 80)
        )
        (i32.const 80)
       )
      )
     )
     (return)
    )
    (return)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $5)
     (i32.mul
      (get_local $7)
      (i32.const 80)
     )
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (get_local $0)
  )
  (unreachable)
 )
 (func $_ZN3pet11battleleaveEN5eosio4nameES1_ (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (call $require_auth
   (get_local $2)
  )
  (set_local $8
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 152)
   )
   (i32.const 0)
  )
  (i64.store offset=136
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=144
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=120
   (get_local $10)
   (tee_local $6
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=128
   (get_local $10)
   (get_local $6)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (get_local $6)
       (get_local $6)
       (i64.const 4157834741199929344)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (tee_local $7
       (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $10)
         (i32.const 120)
        )
        (get_local $5)
       )
      )
     )
     (i32.add
      (get_local $10)
      (i32.const 120)
     )
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $3
    (i32.ne
     (get_local $7)
     (i32.const 0)
    )
   )
   (i32.const 1104)
  )
  (call $eosio_assert
   (i32.eqz
    (i32.load offset=12
     (tee_local $4
      (call $_ZN5types9st_battleC2ERKS0_
       (i32.add
        (get_local $10)
        (i32.const 72)
       )
       (get_local $7)
      )
     )
    )
   )
   (i32.const 1248)
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $5
      (i32.load offset=20
       (get_local $4)
      )
     )
     (tee_local $9
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 24)
       )
      )
     )
    )
   )
   (block $label$2
    (loop $label$3
     (br_if $label$2
      (i64.eq
       (i64.load
        (get_local $5)
       )
       (get_local $2)
      )
     )
     (br_if $label$3
      (i32.ne
       (get_local $9)
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 80)
        )
       )
      )
     )
     (br $label$1)
    )
   )
   (set_local $8
    (i32.const 1)
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 1280)
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i64.ne
       (get_local $2)
       (get_local $1)
      )
     )
     (call $eosio_assert
      (get_local $3)
      (i32.const 560)
     )
     (call $eosio_assert
      (get_local $3)
      (i32.const 608)
     )
     (block $label$7
      (br_if $label$7
       (i32.lt_s
        (tee_local $5
         (call $db_next_i64
          (i32.load offset=48
           (get_local $7)
          )
          (get_local $10)
         )
        )
        (i32.const 0)
       )
      )
      (drop
       (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $10)
         (i32.const 120)
        )
        (get_local $5)
       )
      )
     )
     (call $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE5eraseERKS2_
      (i32.add
       (get_local $10)
       (i32.const 120)
      )
      (get_local $7)
     )
     (call $_ZN3pet15_get_pet_configEv
      (get_local $10)
      (get_local $0)
     )
     (i32.store16 offset=60
      (get_local $10)
      (i32.add
       (i32.load16_u offset=60
        (get_local $10)
       )
       (i32.const -1)
      )
     )
     (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
      (i32.add
       (get_local $0)
       (i32.const 208)
      )
      (get_local $10)
      (i64.load
       (get_local $0)
      )
     )
     (br_if $label$5
      (tee_local $5
       (i32.load offset=32
        (get_local $4)
       )
      )
     )
     (br $label$4)
    )
    (block $label$8
     (block $label$9
      (block $label$10
       (br_if $label$10
        (i32.eq
         (tee_local $9
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 20)
           )
          )
         )
         (tee_local $0
          (i32.load
           (i32.add
            (get_local $4)
            (i32.const 24)
           )
          )
         )
        )
       )
       (loop $label$11
        (br_if $label$10
         (i64.eq
          (i64.load
           (get_local $9)
          )
          (get_local $2)
         )
        )
        (br_if $label$11
         (i32.ne
          (get_local $0)
          (tee_local $9
           (i32.add
            (get_local $9)
            (i32.const 80)
           )
          )
         )
        )
       )
       (br_if $label$9
        (i32.ne
         (tee_local $9
          (get_local $0)
         )
         (get_local $0)
        )
       )
       (br $label$8)
      )
      (block $label$12
       (br_if $label$12
        (i32.eq
         (get_local $9)
         (get_local $0)
        )
       )
       (set_local $5
        (get_local $9)
       )
       (loop $label$13
        (br_if $label$12
         (i32.eq
          (tee_local $5
           (i32.add
            (get_local $5)
            (i32.const 80)
           )
          )
          (get_local $0)
         )
        )
        (br_if $label$13
         (i64.eq
          (i64.load
           (get_local $5)
          )
          (get_local $2)
         )
        )
        (set_local $9
         (i32.add
          (call $memcpy
           (get_local $9)
           (get_local $5)
           (i32.const 80)
          )
          (i32.const 80)
         )
        )
        (br $label$13)
       )
      )
      (br_if $label$8
       (i32.eq
        (get_local $9)
        (get_local $0)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
      (get_local $9)
     )
    )
    (i32.store
     (get_local $10)
     (get_local $4)
    )
    (call $eosio_assert
     (get_local $3)
     (i32.const 80)
    )
    (call $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet11battleleaveENS_4nameES6_E3$_6EEvRKS2_yOT_
     (i32.add
      (get_local $10)
      (i32.const 120)
     )
     (get_local $7)
     (get_local $10)
    )
    (br_if $label$4
     (i32.eqz
      (tee_local $5
       (i32.load offset=32
        (get_local $4)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 36)
    )
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$14
   (br_if $label$14
    (i32.eqz
     (tee_local $5
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 20)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$15
   (br_if $label$15
    (i32.eqz
     (tee_local $4
      (i32.load offset=144
       (get_local $10)
      )
     )
    )
   )
   (block $label$16
    (block $label$17
     (br_if $label$17
      (i32.eq
       (tee_local $9
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $10)
           (i32.const 148)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$18
      (set_local $5
       (i32.load
        (tee_local $9
         (i32.add
          (get_local $9)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $9)
       (i32.const 0)
      )
      (block $label$19
       (br_if $label$19
        (i32.eqz
         (get_local $5)
        )
       )
       (block $label$20
        (br_if $label$20
         (i32.eqz
          (tee_local $0
           (i32.load offset=32
            (get_local $5)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $5)
          (i32.const 36)
         )
         (get_local $0)
        )
        (call $_ZdlPv
         (get_local $0)
        )
       )
       (block $label$21
        (br_if $label$21
         (i32.eqz
          (tee_local $0
           (i32.load offset=20
            (get_local $5)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $5)
          (i32.const 24)
         )
         (get_local $0)
        )
        (call $_ZdlPv
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$18
       (i32.ne
        (get_local $4)
        (get_local $9)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 144)
       )
      )
     )
     (br $label$16)
    )
    (set_local $5
     (get_local $4)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 160)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $eosio_assert
   (i32.eq
    (i32.load offset=44
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 640)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 688)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $5
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $8
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $8)
       (get_local $5)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 752)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $6
       (i32.load
        (get_local $4)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (set_local $6
     (get_local $8)
    )
    (loop $label$4
     (set_local $5
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $6)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $7
      (i32.load
       (get_local $6)
      )
     )
     (i32.store
      (get_local $6)
      (get_local $5)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $7)
       )
      )
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (tee_local $5
          (i32.load offset=32
           (get_local $7)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $7)
         (i32.const 36)
        )
        (get_local $5)
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (block $label$7
       (br_if $label$7
        (i32.eqz
         (tee_local $5
          (i32.load offset=20
           (get_local $7)
          )
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
        (get_local $5)
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (call $_ZdlPv
       (get_local $7)
      )
     )
     (i32.store
      (i32.add
       (get_local $6)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $6)
        (i32.const 32)
       )
      )
     )
     (set_local $6
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$8
    (set_local $6
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $6)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (tee_local $5
         (i32.load offset=32
          (get_local $6)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $6)
        (i32.const 36)
       )
       (get_local $5)
      )
      (call $_ZdlPv
       (get_local $5)
      )
     )
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (tee_local $5
         (i32.load offset=20
          (get_local $6)
         )
        )
       )
      )
      (i32.store
       (i32.add
        (get_local $6)
        (i32.const 24)
       )
       (get_local $5)
      )
      (call $_ZdlPv
       (get_local $5)
      )
     )
     (call $_ZdlPv
      (get_local $6)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=48
    (get_local $1)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet11battleleaveENS_4nameES6_E3$_6EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (set_local $11
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $10)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=44
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 20)
   )
  )
  (set_local $9
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $2
      (i32.load
       (get_local $2)
      )
     )
     (get_local $1)
    )
   )
   (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (get_local $4)
    (i32.load offset=20
     (get_local $2)
    )
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 24)
     )
    )
   )
   (set_local $9
    (i64.load
     (get_local $1)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (get_local $9)
   )
   (i32.const 416)
  )
  (set_local $9
   (i64.extend_u/i32
    (i32.div_s
     (tee_local $8
      (i32.sub
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 24)
         )
        )
       )
       (tee_local $6
        (i32.load
         (get_local $4)
        )
       )
      )
     )
     (i32.const 80)
    )
   )
  )
  (set_local $2
   (i32.const 89)
  )
  (loop $label$1
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $5)
     )
    )
    (set_local $2
     (i32.add
      (i32.mul
       (i32.div_u
        (i32.add
         (get_local $8)
         (i32.const -80)
        )
        (i32.const 80)
       )
       (i32.const 72)
      )
      (get_local $2)
     )
    )
    (br $label$2)
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -72)
    )
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $8
      (i32.sub
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 36)
         )
        )
       )
       (tee_local $6
        (i32.load
         (get_local $7)
        )
       )
      )
     )
     (i32.const 5)
    )
   )
  )
  (loop $label$4
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eq
     (get_local $6)
     (get_local $5)
    )
   )
   (set_local $2
    (i32.add
     (i32.add
      (i32.mul
       (i32.shr_u
        (i32.add
         (get_local $8)
         (i32.const -32)
        )
        (i32.const 5)
       )
       (i32.const 18)
      )
      (get_local $2)
     )
     (i32.const 18)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $10
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$6)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $10
     (i32.sub
      (get_local $10)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $11)
   (get_local $10)
  )
  (i32.store
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=8
   (get_local $11)
   (i32.add
    (get_local $10)
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $11)
   (get_local $11)
  )
  (i32.store offset=40
   (get_local $11)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $11)
   (get_local $7)
  )
  (i32.store offset=24
   (get_local $11)
   (get_local $1)
  )
  (i32.store offset=28
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=32
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (i32.store offset=36
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio4nameERKhRKmSC_RKNSt3__16vectorIN5types9st_commitENSD_9allocatorISG_EEEERKNSE_INSF_11st_pet_statENSH_ISM_EEEEEEEZNS5_lsINS5_10datastreamIPcEENSF_9st_battleELPv0EEERT_SZ_RKT0_EUlRKSY_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSZ_OS10_NSD_16integer_sequenceIjJXspT1_EEEENSD_17integral_constantIbLb0EEE
   (i32.add
    (get_local $11)
    (i32.const 24)
   )
   (i32.add
    (get_local $11)
    (i32.const 16)
   )
  )
  (call $db_update_i64
   (i32.load offset=48
    (get_local $1)
   )
   (i64.const 0)
   (get_local $10)
   (get_local $2)
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $10)
   )
  )
  (block $label$9
   (br_if $label$9
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 48)
   )
  )
 )
 (func $_ZN3pet11battlestartEN5eosio4nameES1_11checksum256 (type $FUNCSIG$vijji) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $14
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (call $require_auth
   (get_local $2)
  )
  (set_local $13
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $14)
    (i32.const 104)
   )
   (i32.const 0)
  )
  (i64.store offset=88
   (get_local $14)
   (i64.const -1)
  )
  (i64.store offset=96
   (get_local $14)
   (i64.const 0)
  )
  (i64.store offset=72
   (get_local $14)
   (tee_local $9
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=80
   (get_local $14)
   (get_local $9)
  )
  (set_local $11
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $0
      (call $db_find_i64
       (get_local $9)
       (get_local $9)
       (i64.const 4157834741199929344)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (tee_local $11
       (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $14)
         (i32.const 72)
        )
        (get_local $0)
       )
      )
     )
     (i32.add
      (get_local $14)
      (i32.const 72)
     )
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $4
    (i32.ne
     (get_local $11)
     (i32.const 0)
    )
   )
   (i32.const 1104)
  )
  (call $eosio_assert
   (i32.eqz
    (i32.load offset=12
     (tee_local $5
      (call $_ZN5types9st_battleC2ERKS0_
       (i32.add
        (get_local $14)
        (i32.const 24)
       )
       (get_local $11)
      )
     )
    )
   )
   (i32.const 1248)
  )
  (call $eosio_assert
   (i32.eq
    (i32.sub
     (i32.load
      (tee_local $10
       (i32.add
        (get_local $5)
        (i32.const 24)
       )
      )
     )
     (i32.load offset=20
      (get_local $5)
     )
    )
    (i32.const 160)
   )
   (i32.const 1312)
  )
  (i32.store offset=16
   (get_local $14)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $14)
   (i64.const 0)
  )
  (set_local $6
   (i32.add
    (get_local $5)
    (i32.const 20)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $0
      (i32.load offset=20
       (get_local $5)
      )
     )
     (tee_local $7
      (i32.load
       (get_local $10)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 48)
    )
   )
   (set_local $13
    (i32.const 0)
   )
   (loop $label$2
    (set_local $9
     (i64.load
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const -48)
       )
      )
     )
    )
    (set_local $12
     (i32.const 0)
    )
    (block $label$3
     (br_if $label$3
      (i64.ne
       (i64.load
        (get_local $0)
       )
       (i64.const 0)
      )
     )
     (set_local $12
      (i32.const 0)
     )
     (br_if $label$3
      (i64.ne
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
       (i64.const 0)
      )
     )
     (set_local $12
      (i32.const 0)
     )
     (br_if $label$3
      (i64.ne
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (i64.const 0)
      )
     )
     (set_local $12
      (i64.eqz
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
       )
      )
     )
    )
    (block $label$4
     (block $label$5
      (block $label$6
       (block $label$7
        (br_if $label$7
         (i64.ne
          (get_local $9)
          (get_local $2)
         )
        )
        (call $eosio_assert
         (get_local $12)
         (i32.const 1360)
        )
        (call $assert_sha256
         (get_local $3)
         (i32.const 32)
         (i32.add
          (get_local $0)
          (i32.const -32)
         )
        )
        (i64.store
         (i32.add
          (get_local $0)
          (i32.const 24)
         )
         (i64.load
          (i32.add
           (get_local $3)
           (i32.const 24)
          )
         )
        )
        (i64.store
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
         (i64.load
          (i32.add
           (get_local $3)
           (i32.const 16)
          )
         )
        )
        (i64.store
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
         (i64.load
          (i32.add
           (get_local $3)
           (i32.const 8)
          )
         )
        )
        (i64.store
         (get_local $0)
         (i64.load
          (get_local $3)
         )
        )
        (br_if $label$6
         (i32.ge_u
          (tee_local $12
           (i32.load offset=12
            (get_local $14)
           )
          )
          (i32.load
           (i32.add
            (i32.add
             (get_local $14)
             (i32.const 8)
            )
            (i32.const 8)
           )
          )
         )
        )
        (i32.store offset=12
         (get_local $14)
         (i32.add
          (call $memcpy
           (get_local $12)
           (get_local $8)
           (i32.const 80)
          )
          (i32.const 80)
         )
        )
        (set_local $13
         (i32.const 1)
        )
        (br $label$4)
       )
       (br_if $label$4
        (get_local $12)
       )
       (br_if $label$5
        (i32.ge_u
         (tee_local $12
          (i32.load offset=12
           (get_local $14)
          )
         )
         (i32.load
          (i32.add
           (i32.add
            (get_local $14)
            (i32.const 8)
           )
           (i32.const 8)
          )
         )
        )
       )
       (i32.store offset=12
        (get_local $14)
        (i32.add
         (call $memcpy
          (get_local $12)
          (get_local $8)
          (i32.const 80)
         )
         (i32.const 80)
        )
       )
       (br $label$4)
      )
      (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_
       (i32.add
        (get_local $14)
        (i32.const 8)
       )
       (get_local $8)
      )
      (set_local $13
       (i32.const 1)
      )
      (br $label$4)
     )
     (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_
      (i32.add
       (get_local $14)
       (i32.const 8)
      )
      (get_local $8)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 80)
     )
    )
    (br_if $label$2
     (i32.ne
      (i32.add
       (get_local $8)
       (i32.const 80)
      )
      (get_local $7)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.and
    (get_local $13)
    (i32.const 1)
   )
   (i32.const 1344)
  )
  (block $label$8
   (br_if $label$8
    (i32.ne
     (i32.sub
      (tee_local $0
       (i32.load offset=12
        (get_local $14)
       )
      )
      (tee_local $8
       (i32.load offset=8
        (get_local $14)
       )
      )
     )
     (i32.sub
      (i32.load
       (get_local $10)
      )
      (i32.load
       (get_local $6)
      )
     )
    )
   )
   (call $_ZNSt3__16__sortIRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEvT0_SA_T_
    (get_local $8)
    (get_local $0)
   )
   (i64.store32
    (i32.add
     (get_local $5)
     (i32.const 12)
    )
    (i64.div_u
     (call $current_time)
     (i64.const 1000000)
    )
   )
   (i64.store32 offset=16
    (get_local $5)
    (i64.div_u
     (call $current_time)
     (i64.const 1000000)
    )
   )
   (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (get_local $6)
    (i32.load offset=8
     (get_local $14)
    )
    (i32.load offset=12
     (get_local $14)
    )
   )
  )
  (i32.store
   (get_local $14)
   (get_local $5)
  )
  (call $eosio_assert
   (get_local $4)
   (i32.const 80)
  )
  (call $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet11battlestartENS_4nameES6_11checksum256E3$_8EEvRKS2_yOT_
   (i32.add
    (get_local $14)
    (i32.const 72)
   )
   (get_local $11)
   (get_local $14)
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (tee_local $0
      (i32.load offset=8
       (get_local $14)
      )
     )
    )
   )
   (i32.store offset=12
    (get_local $14)
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (tee_local $0
      (i32.load offset=32
       (get_local $5)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $5)
     (i32.const 36)
    )
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $0
      (i32.load offset=20
       (get_local $5)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $5)
     (i32.const 24)
    )
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (tee_local $3
      (i32.load offset=96
       (get_local $14)
      )
     )
    )
   )
   (block $label$13
    (block $label$14
     (br_if $label$14
      (i32.eq
       (tee_local $8
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $14)
           (i32.const 100)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$15
      (set_local $0
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $8)
       (i32.const 0)
      )
      (block $label$16
       (br_if $label$16
        (i32.eqz
         (get_local $0)
        )
       )
       (block $label$17
        (br_if $label$17
         (i32.eqz
          (tee_local $12
           (i32.load offset=32
            (get_local $0)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 36)
         )
         (get_local $12)
        )
        (call $_ZdlPv
         (get_local $12)
        )
       )
       (block $label$18
        (br_if $label$18
         (i32.eqz
          (tee_local $12
           (i32.load offset=20
            (get_local $0)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 24)
         )
         (get_local $12)
        )
        (call $_ZdlPv
         (get_local $12)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$15
       (i32.ne
        (get_local $3)
        (get_local $8)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $14)
        (i32.const 96)
       )
      )
     )
     (br $label$13)
    )
    (set_local $0
     (get_local $3)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $14)
    (i32.const 112)
   )
  )
 )
 (func $_ZNSt3__16__sortIRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEvT0_SA_T_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (loop $label$0
   (set_local $3
    (i32.add
     (get_local $1)
     (i32.const -160)
    )
   )
   (set_local $2
    (i32.add
     (get_local $1)
     (i32.const -80)
    )
   )
   (loop $label$1
    (set_local $4
     (get_local $0)
    )
    (block $label$2
     (loop $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (block $label$9
            (block $label$10
             (block $label$11
              (br_if $label$11
               (i32.le_u
                (tee_local $6
                 (i32.div_s
                  (tee_local $0
                   (i32.sub
                    (get_local $1)
                    (get_local $4)
                   )
                  )
                  (i32.const 80)
                 )
                )
                (i32.const 5)
               )
              )
              (br_if $label$10
               (i32.le_s
                (get_local $0)
                (i32.const 2479)
               )
              )
              (set_local $7
               (i32.add
                (get_local $4)
                (i32.mul
                 (i32.div_u
                  (get_local $0)
                  (i32.const 160)
                 )
                 (i32.const 80)
                )
               )
              )
              (block $label$12
               (block $label$13
                (br_if $label$13
                 (i32.lt_s
                  (get_local $0)
                  (i32.const 79921)
                 )
                )
                (set_local $8
                 (call $_ZNSt3__17__sort5IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_SA_T_
                  (get_local $4)
                  (i32.add
                   (get_local $4)
                   (tee_local $0
                    (i32.mul
                     (i32.div_u
                      (get_local $0)
                      (i32.const 320)
                     )
                     (i32.const 80)
                    )
                   )
                  )
                  (get_local $7)
                  (i32.add
                   (get_local $7)
                   (get_local $0)
                  )
                  (get_local $2)
                 )
                )
                (br $label$12)
               )
               (set_local $8
                (call $_ZNSt3__17__sort3IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_T_
                 (get_local $4)
                 (get_local $7)
                 (get_local $2)
                )
               )
              )
              (call $sha256
               (get_local $4)
               (i32.const 160)
               (i32.add
                (get_local $9)
                (i32.const 32)
               )
              )
              (block $label$14
               (br_if $label$14
                (i32.lt_u
                 (i32.load8_u offset=33
                  (get_local $9)
                 )
                 (i32.load8_u offset=32
                  (get_local $9)
                 )
                )
               )
               (set_local $0
                (get_local $3)
               )
               (block $label$15
                (loop $label$16
                 (br_if $label$15
                  (i32.eq
                   (get_local $4)
                   (get_local $0)
                  )
                 )
                 (call $sha256
                  (get_local $0)
                  (i32.const 160)
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                 )
                 (set_local $0
                  (i32.add
                   (get_local $0)
                   (i32.const -80)
                  )
                 )
                 (br_if $label$16
                  (i32.ge_u
                   (i32.load8_u offset=33
                    (get_local $9)
                   )
                   (i32.load8_u offset=32
                    (get_local $9)
                   )
                  )
                 )
                )
                (drop
                 (call $memcpy
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                  (get_local $4)
                  (i32.const 80)
                 )
                )
                (drop
                 (call $memcpy
                  (get_local $4)
                  (tee_local $6
                   (i32.add
                    (get_local $0)
                    (i32.const 80)
                   )
                  )
                  (i32.const 80)
                 )
                )
                (drop
                 (call $memcpy
                  (get_local $6)
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                  (i32.const 80)
                 )
                )
                (set_local $8
                 (i32.add
                  (get_local $8)
                  (i32.const 1)
                 )
                )
                (br $label$6)
               )
               (call $sha256
                (get_local $4)
                (i32.const 160)
                (i32.add
                 (get_local $9)
                 (i32.const 32)
                )
               )
               (set_local $6
                (i32.add
                 (get_local $4)
                 (i32.const 80)
                )
               )
               (block $label$17
                (br_if $label$17
                 (i32.lt_u
                  (i32.load8_u offset=33
                   (get_local $9)
                  )
                  (i32.load8_u offset=32
                   (get_local $9)
                  )
                 )
                )
                (br_if $label$5
                 (i32.eq
                  (get_local $6)
                  (get_local $2)
                 )
                )
                (set_local $6
                 (i32.add
                  (get_local $4)
                  (i32.const 160)
                 )
                )
                (block $label$18
                 (loop $label$19
                  (call $sha256
                   (get_local $4)
                   (i32.const 160)
                   (i32.add
                    (get_local $9)
                    (i32.const 32)
                   )
                  )
                  (br_if $label$18
                   (i32.lt_u
                    (i32.load8_u offset=33
                     (get_local $9)
                    )
                    (i32.load8_u offset=32
                     (get_local $9)
                    )
                   )
                  )
                  (br_if $label$19
                   (i32.ne
                    (get_local $1)
                    (tee_local $6
                     (i32.add
                      (get_local $6)
                      (i32.const 80)
                     )
                    )
                   )
                  )
                  (br $label$5)
                 )
                )
                (drop
                 (call $memcpy
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                  (tee_local $0
                   (i32.add
                    (get_local $6)
                    (i32.const -80)
                   )
                  )
                  (i32.const 80)
                 )
                )
                (drop
                 (call $memcpy
                  (get_local $0)
                  (get_local $2)
                  (i32.const 80)
                 )
                )
                (drop
                 (call $memcpy
                  (get_local $2)
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                  (i32.const 80)
                 )
                )
               )
               (br_if $label$5
                (i32.eq
                 (get_local $6)
                 (get_local $2)
                )
               )
               (set_local $0
                (get_local $2)
               )
               (loop $label$20
                (call $sha256
                 (get_local $4)
                 (i32.const 160)
                 (i32.add
                  (get_local $9)
                  (i32.const 32)
                 )
                )
                (set_local $6
                 (i32.add
                  (get_local $6)
                  (i32.const 80)
                 )
                )
                (br_if $label$20
                 (i32.ge_u
                  (i32.load8_u offset=33
                   (get_local $9)
                  )
                  (i32.load8_u offset=32
                   (get_local $9)
                  )
                 )
                )
                (set_local $7
                 (i32.add
                  (get_local $6)
                  (i32.const -80)
                 )
                )
                (loop $label$21
                 (call $sha256
                  (get_local $4)
                  (i32.const 160)
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                 )
                 (set_local $0
                  (i32.add
                   (get_local $0)
                   (i32.const -80)
                  )
                 )
                 (br_if $label$21
                  (i32.lt_u
                   (i32.load8_u offset=33
                    (get_local $9)
                   )
                   (i32.load8_u offset=32
                    (get_local $9)
                   )
                  )
                 )
                )
                (br_if $label$4
                 (i32.ge_u
                  (get_local $7)
                  (get_local $0)
                 )
                )
                (drop
                 (call $memcpy
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                  (tee_local $7
                   (i32.add
                    (get_local $6)
                    (i32.const -80)
                   )
                  )
                  (i32.const 80)
                 )
                )
                (drop
                 (call $memcpy
                  (get_local $7)
                  (get_local $0)
                  (i32.const 80)
                 )
                )
                (drop
                 (call $memcpy
                  (get_local $0)
                  (i32.add
                   (get_local $9)
                   (i32.const 32)
                  )
                  (i32.const 80)
                 )
                )
                (br $label$20)
               )
              )
              (set_local $6
               (get_local $2)
              )
              (br $label$6)
             )
             (block $label$22
              (br_table $label$5 $label$5 $label$22 $label$9 $label$8 $label$7 $label$5
               (get_local $6)
              )
             )
             (call $sha256
              (get_local $2)
              (i32.const 160)
              (i32.add
               (get_local $9)
               (i32.const 32)
              )
             )
             (br_if $label$5
              (i32.ge_u
               (i32.load8_u offset=33
                (get_local $9)
               )
               (i32.load8_u offset=32
                (get_local $9)
               )
              )
             )
             (drop
              (call $memcpy
               (i32.add
                (get_local $9)
                (i32.const 32)
               )
               (get_local $4)
               (i32.const 80)
              )
             )
             (drop
              (call $memcpy
               (get_local $4)
               (get_local $2)
               (i32.const 80)
              )
             )
             (drop
              (call $memcpy
               (get_local $2)
               (i32.add
                (get_local $9)
                (i32.const 32)
               )
               (i32.const 80)
              )
             )
             (br $label$5)
            )
            (drop
             (call $_ZNSt3__17__sort3IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_T_
              (get_local $4)
              (i32.add
               (get_local $4)
               (i32.const 80)
              )
              (i32.add
               (get_local $4)
               (i32.const 160)
              )
             )
            )
            (br_if $label$5
             (i32.eq
              (tee_local $7
               (i32.add
                (get_local $4)
                (i32.const 240)
               )
              )
              (get_local $1)
             )
            )
            (set_local $5
             (i32.const 0)
            )
            (loop $label$23
             (call $sha256
              (get_local $7)
              (i32.const 160)
              (i32.add
               (get_local $9)
               (i32.const 32)
              )
             )
             (block $label$24
              (br_if $label$24
               (i32.ge_u
                (i32.load8_u offset=33
                 (get_local $9)
                )
                (i32.load8_u offset=32
                 (get_local $9)
                )
               )
              )
              (drop
               (call $memcpy
                (i32.add
                 (get_local $9)
                 (i32.const 32)
                )
                (get_local $7)
                (i32.const 80)
               )
              )
              (set_local $0
               (get_local $5)
              )
              (block $label$25
               (loop $label$26
                (drop
                 (call $memcpy
                  (i32.add
                   (tee_local $6
                    (i32.add
                     (get_local $4)
                     (get_local $0)
                    )
                   )
                   (i32.const 240)
                  )
                  (tee_local $6
                   (i32.add
                    (get_local $6)
                    (i32.const 160)
                   )
                  )
                  (i32.const 80)
                 )
                )
                (br_if $label$25
                 (i32.eq
                  (get_local $0)
                  (i32.const -160)
                 )
                )
                (call $sha256
                 (i32.add
                  (get_local $9)
                  (i32.const 32)
                 )
                 (i32.const 160)
                 (get_local $9)
                )
                (set_local $0
                 (i32.add
                  (get_local $0)
                  (i32.const -80)
                 )
                )
                (br_if $label$26
                 (i32.lt_u
                  (i32.load8_u offset=1
                   (get_local $9)
                  )
                  (i32.load8_u
                   (get_local $9)
                  )
                 )
                )
               )
              )
              (drop
               (call $memcpy
                (get_local $6)
                (i32.add
                 (get_local $9)
                 (i32.const 32)
                )
                (i32.const 80)
               )
              )
             )
             (set_local $5
              (i32.add
               (get_local $5)
               (i32.const 80)
              )
             )
             (br_if $label$23
              (i32.ne
               (tee_local $7
                (i32.add
                 (get_local $7)
                 (i32.const 80)
                )
               )
               (get_local $1)
              )
             )
             (br $label$5)
            )
           )
           (drop
            (call $_ZNSt3__17__sort3IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_T_
             (get_local $4)
             (i32.add
              (get_local $4)
              (i32.const 80)
             )
             (get_local $2)
            )
           )
           (br $label$5)
          )
          (drop
           (call $_ZNSt3__17__sort4IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_T_
            (get_local $4)
            (i32.add
             (get_local $4)
             (i32.const 80)
            )
            (i32.add
             (get_local $4)
             (i32.const 160)
            )
            (get_local $2)
           )
          )
          (br $label$5)
         )
         (drop
          (call $_ZNSt3__17__sort5IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_SA_T_
           (get_local $4)
           (i32.add
            (get_local $4)
            (i32.const 80)
           )
           (i32.add
            (get_local $4)
            (i32.const 160)
           )
           (i32.add
            (get_local $4)
            (i32.const 240)
           )
           (get_local $2)
          )
         )
         (br $label$5)
        )
        (block $label$27
         (br_if $label$27
          (i32.ge_u
           (tee_local $5
            (i32.add
             (get_local $4)
             (i32.const 80)
            )
           )
           (get_local $6)
          )
         )
         (loop $label$28
          (set_local $0
           (i32.add
            (get_local $5)
            (i32.const -80)
           )
          )
          (loop $label$29
           (call $sha256
            (tee_local $0
             (i32.add
              (get_local $0)
              (i32.const 80)
             )
            )
            (i32.const 160)
            (i32.add
             (get_local $9)
             (i32.const 32)
            )
           )
           (br_if $label$29
            (i32.lt_u
             (i32.load8_u offset=33
              (get_local $9)
             )
             (i32.load8_u offset=32
              (get_local $9)
             )
            )
           )
          )
          (set_local $5
           (i32.add
            (get_local $0)
            (i32.const 80)
           )
          )
          (loop $label$30
           (call $sha256
            (tee_local $6
             (i32.add
              (get_local $6)
              (i32.const -80)
             )
            )
            (i32.const 160)
            (i32.add
             (get_local $9)
             (i32.const 32)
            )
           )
           (br_if $label$30
            (i32.ge_u
             (i32.load8_u offset=33
              (get_local $9)
             )
             (i32.load8_u offset=32
              (get_local $9)
             )
            )
           )
          )
          (block $label$31
           (br_if $label$31
            (i32.gt_u
             (get_local $0)
             (get_local $6)
            )
           )
           (drop
            (call $memcpy
             (i32.add
              (get_local $9)
              (i32.const 32)
             )
             (get_local $0)
             (i32.const 80)
            )
           )
           (drop
            (call $memcpy
             (get_local $0)
             (get_local $6)
             (i32.const 80)
            )
           )
           (set_local $7
            (select
             (call $memcpy
              (get_local $6)
              (i32.add
               (get_local $9)
               (i32.const 32)
              )
              (i32.const 80)
             )
             (get_local $7)
             (i32.eq
              (get_local $7)
              (get_local $0)
             )
            )
           )
           (set_local $8
            (i32.add
             (get_local $8)
             (i32.const 1)
            )
           )
           (br $label$28)
          )
         )
         (set_local $5
          (get_local $0)
         )
        )
        (block $label$32
         (br_if $label$32
          (i32.eq
           (get_local $5)
           (get_local $7)
          )
         )
         (call $sha256
          (get_local $7)
          (i32.const 160)
          (i32.add
           (get_local $9)
           (i32.const 32)
          )
         )
         (br_if $label$32
          (i32.ge_u
           (i32.load8_u offset=33
            (get_local $9)
           )
           (i32.load8_u offset=32
            (get_local $9)
           )
          )
         )
         (drop
          (call $memcpy
           (i32.add
            (get_local $9)
            (i32.const 32)
           )
           (get_local $5)
           (i32.const 80)
          )
         )
         (drop
          (call $memcpy
           (get_local $5)
           (get_local $7)
           (i32.const 80)
          )
         )
         (drop
          (call $memcpy
           (get_local $7)
           (i32.add
            (get_local $9)
            (i32.const 32)
           )
           (i32.const 80)
          )
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (i32.const 1)
          )
         )
        )
        (block $label$33
         (block $label$34
          (br_if $label$34
           (get_local $8)
          )
          (set_local $6
           (call $_ZNSt3__127__insertion_sort_incompleteIRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEbT0_SA_T_
            (get_local $4)
            (get_local $5)
           )
          )
          (br_if $label$33
           (call $_ZNSt3__127__insertion_sort_incompleteIRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEbT0_SA_T_
            (tee_local $0
             (i32.add
              (get_local $5)
              (i32.const 80)
             )
            )
            (get_local $1)
           )
          )
          (br_if $label$1
           (get_local $6)
          )
         )
         (br_if $label$2
          (i32.ge_s
           (i32.sub
            (get_local $5)
            (get_local $4)
           )
           (i32.sub
            (get_local $1)
            (get_local $5)
           )
          )
         )
         (call $_ZNSt3__16__sortIRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEvT0_SA_T_
          (get_local $4)
          (get_local $5)
         )
         (set_local $4
          (i32.add
           (get_local $5)
           (i32.const 80)
          )
         )
         (br $label$3)
        )
        (set_local $1
         (get_local $5)
        )
        (set_local $0
         (get_local $4)
        )
        (br_if $label$0
         (i32.eqz
          (get_local $6)
         )
        )
       )
       (i32.store offset=4
        (i32.const 0)
        (i32.add
         (get_local $9)
         (i32.const 112)
        )
       )
       (return)
      )
      (set_local $4
       (get_local $7)
      )
      (br $label$3)
     )
    )
   )
   (call $_ZNSt3__16__sortIRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEvT0_SA_T_
    (i32.add
     (get_local $5)
     (i32.const 80)
    )
    (get_local $1)
   )
   (set_local $1
    (get_local $5)
   )
   (set_local $0
    (get_local $4)
   )
   (br $label$0)
  )
 )
 (func $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet11battlestartENS_4nameES6_11checksum256E3$_8EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (set_local $13
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $12)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=44
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (i32.store offset=12
   (get_local $1)
   (i32.load offset=12
    (i32.load
     (get_local $2)
    )
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load offset=16
    (i32.load
     (get_local $2)
    )
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 20)
   )
  )
  (set_local $11
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $2
      (i32.load
       (get_local $2)
      )
     )
     (get_local $1)
    )
   )
   (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (get_local $6)
    (i32.load offset=20
     (get_local $2)
    )
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 24)
     )
    )
   )
   (set_local $11
    (i64.load
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (get_local $11)
   )
   (i32.const 416)
  )
  (set_local $11
   (i64.extend_u/i32
    (i32.div_s
     (tee_local $10
      (i32.sub
       (tee_local $7
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 24)
         )
        )
       )
       (tee_local $8
        (i32.load
         (get_local $6)
        )
       )
      )
     )
     (i32.const 80)
    )
   )
  )
  (set_local $2
   (i32.const 89)
  )
  (loop $label$1
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $11
      (i64.shr_u
       (get_local $11)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $9
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $8)
      (get_local $7)
     )
    )
    (set_local $2
     (i32.add
      (i32.mul
       (i32.div_u
        (i32.add
         (get_local $10)
         (i32.const -80)
        )
        (i32.const 80)
       )
       (i32.const 72)
      )
      (get_local $2)
     )
    )
    (br $label$2)
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -72)
    )
   )
  )
  (set_local $11
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $10
      (i32.sub
       (tee_local $7
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 36)
         )
        )
       )
       (tee_local $8
        (i32.load
         (get_local $9)
        )
       )
      )
     )
     (i32.const 5)
    )
   )
  )
  (loop $label$4
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $11
      (i64.shr_u
       (get_local $11)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eq
     (get_local $8)
     (get_local $7)
    )
   )
   (set_local $2
    (i32.add
     (i32.add
      (i32.mul
       (i32.shr_u
        (i32.add
         (get_local $10)
         (i32.const -32)
        )
        (i32.const 5)
       )
       (i32.const 18)
      )
      (get_local $2)
     )
     (i32.const 18)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $12
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$6)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $12
     (i32.sub
      (get_local $12)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $13)
   (get_local $12)
  )
  (i32.store
   (get_local $13)
   (get_local $12)
  )
  (i32.store offset=8
   (get_local $13)
   (i32.add
    (get_local $12)
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $13)
   (get_local $13)
  )
  (i32.store offset=32
   (get_local $13)
   (get_local $4)
  )
  (i32.store offset=36
   (get_local $13)
   (get_local $5)
  )
  (i32.store offset=40
   (get_local $13)
   (get_local $6)
  )
  (i32.store offset=44
   (get_local $13)
   (get_local $9)
  )
  (i32.store offset=24
   (get_local $13)
   (get_local $1)
  )
  (i32.store offset=28
   (get_local $13)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio4nameERKhRKmSC_RKNSt3__16vectorIN5types9st_commitENSD_9allocatorISG_EEEERKNSE_INSF_11st_pet_statENSH_ISM_EEEEEEEZNS5_lsINS5_10datastreamIPcEENSF_9st_battleELPv0EEERT_SZ_RKT0_EUlRKSY_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSZ_OS10_NSD_16integer_sequenceIjJXspT1_EEEENSD_17integral_constantIbLb0EEE
   (i32.add
    (get_local $13)
    (i32.const 24)
   )
   (i32.add
    (get_local $13)
    (i32.const 16)
   )
  )
  (call $db_update_i64
   (i32.load offset=48
    (get_local $1)
   )
   (i64.const 0)
   (get_local $12)
   (get_local $2)
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $12)
   )
  )
  (block $label$9
   (br_if $label$9
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $13)
    (i32.const 48)
   )
  )
 )
 (func $_ZNSt3__17__sort3IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_T_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $sha256
   (get_local $1)
   (i32.const 160)
   (get_local $7)
  )
  (set_local $6
   (i32.load8_u
    (get_local $7)
   )
  )
  (set_local $5
   (i32.load8_u offset=1
    (get_local $7)
   )
  )
  (call $sha256
   (get_local $2)
   (i32.const 160)
   (get_local $7)
  )
  (set_local $4
   (i32.load8_u
    (get_local $7)
   )
  )
  (set_local $3
   (i32.load8_u offset=1
    (get_local $7)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (get_local $5)
        (get_local $6)
       )
      )
      (br_if $label$2
       (i32.ge_u
        (i32.and
         (get_local $3)
         (i32.const 255)
        )
        (i32.and
         (get_local $4)
         (i32.const 255)
        )
       )
      )
      (set_local $1
       (call $memcpy
        (get_local $7)
        (get_local $0)
        (i32.const 80)
       )
      )
      (drop
       (call $memcpy
        (get_local $0)
        (get_local $2)
        (i32.const 80)
       )
      )
      (drop
       (call $memcpy
        (get_local $2)
        (get_local $1)
        (i32.const 80)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (br $label$0)
     )
     (set_local $6
      (i32.const 0)
     )
     (br_if $label$0
      (i32.ge_u
       (i32.and
        (get_local $3)
        (i32.const 255)
       )
       (i32.and
        (get_local $4)
        (i32.const 255)
       )
      )
     )
     (set_local $5
      (call $memcpy
       (get_local $7)
       (get_local $1)
       (i32.const 80)
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (i32.const 80)
      )
     )
     (drop
      (call $memcpy
       (get_local $2)
       (get_local $5)
       (i32.const 80)
      )
     )
     (call $sha256
      (get_local $1)
      (i32.const 160)
      (get_local $5)
     )
     (set_local $6
      (i32.const 1)
     )
     (br_if $label$0
      (i32.ge_u
       (i32.load8_u offset=1
        (get_local $5)
       )
       (i32.load8_u
        (get_local $5)
       )
      )
     )
     (set_local $2
      (call $memcpy
       (get_local $5)
       (get_local $0)
       (i32.const 80)
      )
     )
     (drop
      (call $memcpy
       (get_local $0)
       (get_local $1)
       (i32.const 80)
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (i32.const 80)
      )
     )
     (br $label$1)
    )
    (set_local $5
     (call $memcpy
      (get_local $7)
      (get_local $0)
      (i32.const 80)
     )
    )
    (drop
     (call $memcpy
      (get_local $0)
      (get_local $1)
      (i32.const 80)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $5)
      (i32.const 80)
     )
    )
    (call $sha256
     (get_local $2)
     (i32.const 160)
     (get_local $5)
    )
    (set_local $6
     (i32.const 1)
    )
    (br_if $label$0
     (i32.ge_u
      (i32.load8_u offset=1
       (get_local $5)
      )
      (i32.load8_u
       (get_local $5)
      )
     )
    )
    (set_local $6
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (i32.const 80)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $2)
      (i32.const 80)
     )
    )
    (drop
     (call $memcpy
      (get_local $2)
      (get_local $6)
      (i32.const 80)
     )
    )
   )
   (set_local $6
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__17__sort4IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_T_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (set_local $5
   (call $_ZNSt3__17__sort3IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_T_
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (call $sha256
   (get_local $3)
   (i32.const 160)
   (get_local $6)
  )
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (i32.load8_u offset=1
      (get_local $6)
     )
     (i32.load8_u
      (get_local $6)
     )
    )
   )
   (set_local $4
    (call $memcpy
     (get_local $6)
     (get_local $2)
     (i32.const 80)
    )
   )
   (drop
    (call $memcpy
     (get_local $2)
     (get_local $3)
     (i32.const 80)
    )
   )
   (drop
    (call $memcpy
     (get_local $3)
     (get_local $4)
     (i32.const 80)
    )
   )
   (call $sha256
    (get_local $2)
    (i32.const 160)
    (get_local $4)
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.ge_u
       (i32.load8_u offset=1
        (get_local $4)
       )
       (i32.load8_u
        (get_local $4)
       )
      )
     )
     (set_local $3
      (call $memcpy
       (get_local $4)
       (get_local $1)
       (i32.const 80)
      )
     )
     (set_local $4
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (i32.const 80)
      )
     )
     (drop
      (call $memcpy
       (get_local $2)
       (get_local $3)
       (i32.const 80)
      )
     )
     (call $sha256
      (get_local $4)
      (i32.const 160)
      (get_local $3)
     )
     (br_if $label$1
      (i32.ge_u
       (i32.load8_u offset=1
        (get_local $3)
       )
       (i32.load8_u
        (get_local $3)
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $3)
       (get_local $0)
       (i32.const 80)
      )
     )
     (drop
      (call $memcpy
       (get_local $0)
       (get_local $4)
       (i32.const 80)
      )
     )
     (drop
      (call $memcpy
       (get_local $4)
       (get_local $3)
       (i32.const 80)
      )
     )
     (set_local $5
      (i32.add
       (get_local $5)
       (i32.const 3)
      )
     )
     (br $label$0)
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $label$0)
   )
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 2)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 80)
   )
  )
  (get_local $5)
 )
 (func $_ZNSt3__17__sort5IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_SA_T_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (set_local $6
   (call $_ZNSt3__17__sort4IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_T_
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (get_local $3)
   )
  )
  (call $sha256
   (get_local $4)
   (i32.const 160)
   (get_local $7)
  )
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (i32.load8_u offset=1
      (get_local $7)
     )
     (i32.load8_u
      (get_local $7)
     )
    )
   )
   (set_local $5
    (call $memcpy
     (get_local $7)
     (get_local $3)
     (i32.const 80)
    )
   )
   (drop
    (call $memcpy
     (get_local $3)
     (get_local $4)
     (i32.const 80)
    )
   )
   (drop
    (call $memcpy
     (get_local $4)
     (get_local $5)
     (i32.const 80)
    )
   )
   (call $sha256
    (get_local $3)
    (i32.const 160)
    (get_local $5)
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (i32.load8_u offset=1
         (get_local $5)
        )
        (i32.load8_u
         (get_local $5)
        )
       )
      )
      (set_local $4
       (call $memcpy
        (get_local $5)
        (get_local $2)
        (i32.const 80)
       )
      )
      (set_local $5
       (call $memcpy
        (get_local $2)
        (get_local $3)
        (i32.const 80)
       )
      )
      (drop
       (call $memcpy
        (get_local $3)
        (get_local $4)
        (i32.const 80)
       )
      )
      (call $sha256
       (get_local $5)
       (i32.const 160)
       (get_local $4)
      )
      (br_if $label$2
       (i32.ge_u
        (i32.load8_u offset=1
         (get_local $4)
        )
        (i32.load8_u
         (get_local $4)
        )
       )
      )
      (drop
       (call $memcpy
        (get_local $4)
        (get_local $1)
        (i32.const 80)
       )
      )
      (set_local $3
       (call $memcpy
        (get_local $1)
        (get_local $5)
        (i32.const 80)
       )
      )
      (drop
       (call $memcpy
        (get_local $5)
        (get_local $4)
        (i32.const 80)
       )
      )
      (call $sha256
       (get_local $3)
       (i32.const 160)
       (get_local $4)
      )
      (br_if $label$1
       (i32.ge_u
        (i32.load8_u offset=1
         (get_local $4)
        )
        (i32.load8_u
         (get_local $4)
        )
       )
      )
      (drop
       (call $memcpy
        (get_local $4)
        (get_local $0)
        (i32.const 80)
       )
      )
      (drop
       (call $memcpy
        (get_local $0)
        (get_local $3)
        (i32.const 80)
       )
      )
      (drop
       (call $memcpy
        (get_local $3)
        (get_local $4)
        (i32.const 80)
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (i32.const 4)
       )
      )
      (br $label$0)
     )
     (set_local $6
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (br $label$0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 2)
     )
    )
    (br $label$0)
   )
   (set_local $6
    (i32.add
     (get_local $6)
     (i32.const 3)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__127__insertion_sort_incompleteIRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEbT0_SA_T_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (br_if $label$6
          (i32.gt_u
           (tee_local $2
            (i32.div_s
             (i32.sub
              (get_local $1)
              (get_local $0)
             )
             (i32.const 80)
            )
           )
           (i32.const 5)
          )
         )
         (set_local $7
          (i32.const 1)
         )
         (block $label$7
          (br_table $label$0 $label$0 $label$7 $label$5 $label$3 $label$4 $label$0
           (get_local $2)
          )
         )
         (call $sha256
          (tee_local $2
           (i32.add
            (get_local $1)
            (i32.const -80)
           )
          )
          (i32.const 160)
          (get_local $8)
         )
         (br_if $label$0
          (i32.ge_u
           (i32.load8_u offset=1
            (get_local $8)
           )
           (i32.load8_u
            (get_local $8)
           )
          )
         )
         (set_local $3
          (call $memcpy
           (get_local $8)
           (get_local $0)
           (i32.const 80)
          )
         )
         (drop
          (call $memcpy
           (get_local $0)
           (get_local $2)
           (i32.const 80)
          )
         )
         (drop
          (call $memcpy
           (get_local $2)
           (get_local $3)
           (i32.const 80)
          )
         )
         (br $label$0)
        )
        (drop
         (call $_ZNSt3__17__sort3IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_T_
          (get_local $0)
          (i32.add
           (get_local $0)
           (i32.const 80)
          )
          (i32.add
           (get_local $0)
           (i32.const 160)
          )
         )
        )
        (block $label$8
         (br_if $label$8
          (i32.eq
           (tee_local $5
            (i32.add
             (get_local $0)
             (i32.const 240)
            )
           )
           (get_local $1)
          )
         )
         (set_local $4
          (i32.const 0)
         )
         (set_local $6
          (i32.const 0)
         )
         (loop $label$9
          (call $sha256
           (get_local $5)
           (i32.const 160)
           (get_local $8)
          )
          (block $label$10
           (br_if $label$10
            (i32.ge_u
             (i32.load8_u offset=1
              (get_local $8)
             )
             (i32.load8_u
              (get_local $8)
             )
            )
           )
           (set_local $2
            (call $memcpy
             (get_local $8)
             (get_local $5)
             (i32.const 80)
            )
           )
           (set_local $7
            (get_local $4)
           )
           (block $label$11
            (loop $label$12
             (drop
              (call $memcpy
               (i32.add
                (tee_local $3
                 (i32.add
                  (get_local $0)
                  (get_local $7)
                 )
                )
                (i32.const 240)
               )
               (tee_local $3
                (i32.add
                 (get_local $3)
                 (i32.const 160)
                )
               )
               (i32.const 80)
              )
             )
             (br_if $label$11
              (i32.eq
               (get_local $7)
               (i32.const -160)
              )
             )
             (call $sha256
              (get_local $2)
              (i32.const 160)
              (i32.add
               (get_local $2)
               (i32.const 80)
              )
             )
             (set_local $7
              (i32.add
               (get_local $7)
               (i32.const -80)
              )
             )
             (br_if $label$12
              (i32.lt_u
               (i32.load8_u offset=81
                (get_local $2)
               )
               (i32.load8_u offset=80
                (get_local $2)
               )
              )
             )
            )
           )
           (drop
            (call $memcpy
             (get_local $3)
             (get_local $2)
             (i32.const 80)
            )
           )
           (br_if $label$2
            (i32.eq
             (tee_local $6
              (i32.add
               (get_local $6)
               (i32.const 1)
              )
             )
             (i32.const 8)
            )
           )
          )
          (set_local $4
           (i32.add
            (get_local $4)
            (i32.const 80)
           )
          )
          (br_if $label$9
           (i32.ne
            (tee_local $5
             (i32.add
              (get_local $5)
              (i32.const 80)
             )
            )
            (get_local $1)
           )
          )
         )
        )
        (set_local $7
         (i32.const 1)
        )
        (br $label$1)
       )
       (drop
        (call $_ZNSt3__17__sort3IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_T_
         (get_local $0)
         (i32.add
          (get_local $0)
          (i32.const 80)
         )
         (i32.add
          (get_local $1)
          (i32.const -80)
         )
        )
       )
       (br $label$0)
      )
      (drop
       (call $_ZNSt3__17__sort5IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_SA_T_
        (get_local $0)
        (i32.add
         (get_local $0)
         (i32.const 80)
        )
        (i32.add
         (get_local $0)
         (i32.const 160)
        )
        (i32.add
         (get_local $0)
         (i32.const 240)
        )
        (i32.add
         (get_local $1)
         (i32.const -80)
        )
       )
      )
      (br $label$0)
     )
     (drop
      (call $_ZNSt3__17__sort4IRZN3pet11battlestartEN5eosio4nameES3_11checksum256E3$_7PN5types9st_commitEEEjT0_SA_SA_SA_T_
       (get_local $0)
       (i32.add
        (get_local $0)
        (i32.const 80)
       )
       (i32.add
        (get_local $0)
        (i32.const 160)
       )
       (i32.add
        (get_local $1)
        (i32.const -80)
       )
      )
     )
     (br $label$0)
    )
    (set_local $2
     (i32.eq
      (i32.add
       (get_local $5)
       (i32.const 80)
      )
      (get_local $1)
     )
    )
    (set_local $7
     (i32.const 0)
    )
   )
   (set_local $7
    (i32.or
     (get_local $2)
     (get_local $7)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.and
   (get_local $7)
   (i32.const 1)
  )
 )
 (func $_ZN3pet12battleselpetEN5eosio4nameES1_y (type $FUNCSIG$vijjj) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $13
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 288)
    )
   )
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $13)
    (i32.const 152)
   )
   (i32.const 0)
  )
  (i64.store offset=136
   (get_local $13)
   (i64.const -1)
  )
  (i64.store offset=144
   (get_local $13)
   (i64.const 0)
  )
  (i64.store offset=120
   (get_local $13)
   (tee_local $10
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=128
   (get_local $13)
   (get_local $10)
  )
  (set_local $11
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $9
      (call $db_find_i64
       (get_local $10)
       (get_local $10)
       (i64.const 4157834741199929344)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (tee_local $11
       (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $13)
         (i32.const 120)
        )
        (get_local $9)
       )
      )
     )
     (i32.add
      (get_local $13)
      (i32.const 120)
     )
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $4
    (i32.ne
     (get_local $11)
     (i32.const 0)
    )
   )
   (i32.const 1104)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eq
        (tee_local $12
         (i32.load8_u offset=8
          (tee_local $5
           (call $_ZN5types9st_battleC2ERKS0_
            (i32.add
             (get_local $13)
             (i32.const 72)
            )
            (get_local $11)
           )
          )
         )
        )
        (i32.const 3)
       )
      )
      (br_if $label$3
       (i32.eq
        (get_local $12)
        (i32.const 2)
       )
      )
      (set_local $9
       (i32.const 1)
      )
      (br_if $label$2
       (i32.ne
        (get_local $12)
        (i32.const 1)
       )
      )
      (br_if $label$2
       (i32.ge_u
        (i32.shr_s
         (i32.sub
          (i32.load
           (i32.add
            (get_local $5)
            (i32.const 36)
           )
          )
          (i32.load offset=32
           (get_local $5)
          )
         )
         (i32.const 5)
        )
        (i32.const 2)
       )
      )
      (br $label$1)
     )
     (set_local $9
      (i32.lt_u
       (i32.shr_s
        (i32.sub
         (i32.load
          (i32.add
           (get_local $5)
           (i32.const 36)
          )
         )
         (i32.load offset=32
          (get_local $5)
         )
        )
        (i32.const 5)
       )
       (i32.const 6)
      )
     )
     (br $label$1)
    )
    (set_local $9
     (i32.const 1)
    )
    (br_if $label$1
     (i32.lt_u
      (i32.shr_s
       (i32.sub
        (i32.load
         (i32.add
          (get_local $5)
          (i32.const 36)
         )
        )
        (i32.load offset=32
         (get_local $5)
        )
       )
       (i32.const 5)
      )
      (i32.const 4)
     )
    )
   )
   (set_local $9
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $9)
   (i32.const 1392)
  )
  (call $_ZN3pet15_get_pet_configEv
   (get_local $13)
   (get_local $0)
  )
  (set_local $9
   (i32.load offset=20
    (get_local $5)
   )
  )
  (call $eosio_assert
   (i32.or
    (i32.gt_u
     (i32.sub
      (i32.wrap/i64
       (i64.div_u
        (call $current_time)
        (i64.const 1000000)
       )
      )
      (i32.load offset=16
       (get_local $5)
      )
     )
     (i32.load offset=52
      (get_local $13)
     )
    )
    (i64.eq
     (i64.load
      (get_local $9)
     )
     (get_local $2)
    )
   )
   (i32.const 1424)
  )
  (block $label$5
   (br_if $label$5
    (i64.ne
     (i64.load
      (get_local $9)
     )
     (get_local $2)
    )
   )
   (br_if $label$5
    (i32.eq
     (tee_local $12
      (i32.add
       (tee_local $9
        (i32.load
         (i32.add
          (get_local $5)
          (i32.const 20)
         )
        )
       )
       (i32.const 80)
      )
     )
     (tee_local $8
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 24)
       )
      )
     )
    )
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $13)
      (i32.const 160)
     )
     (get_local $9)
     (i32.const 80)
    )
   )
   (set_local $7
    (i32.div_s
     (tee_local $8
      (i32.sub
       (get_local $8)
       (get_local $12)
      )
     )
     (i32.const 80)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (get_local $8)
     )
    )
    (drop
     (call $memmove
      (get_local $9)
      (get_local $12)
      (get_local $8)
     )
    )
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $9)
      (i32.mul
       (get_local $7)
       (i32.const 80)
      )
     )
     (i32.add
      (get_local $13)
      (i32.const 160)
     )
     (i32.const 80)
    )
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (tee_local $8
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 116)
       )
      )
     )
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
    )
   )
   (set_local $9
    (i32.add
     (get_local $8)
     (i32.const -24)
    )
   )
   (set_local $7
    (i32.sub
     (i32.const 0)
     (get_local $6)
    )
   )
   (loop $label$8
    (br_if $label$7
     (i64.eq
      (i64.load
       (i32.load
        (get_local $9)
       )
      )
      (get_local $3)
     )
    )
    (set_local $8
     (get_local $9)
    )
    (set_local $9
     (tee_local $12
      (i32.add
       (get_local $9)
       (i32.const -24)
      )
     )
    )
    (br_if $label$8
     (i32.ne
      (i32.add
       (get_local $12)
       (get_local $7)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $12
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
  )
  (block $label$9
   (block $label$10
    (br_if $label$10
     (i32.eq
      (get_local $8)
      (get_local $6)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $9
        (i32.load
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $12)
     )
     (i32.const 16)
    )
    (br $label$9)
   )
   (set_local $9
    (i32.const 0)
   )
   (br_if $label$9
    (i32.lt_s
     (tee_local $8
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 88)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 96)
        )
       )
       (i64.const -6146428328942239744)
       (get_local $3)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=60
      (tee_local $9
       (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $12)
        (get_local $8)
       )
      )
     )
     (get_local $12)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $9)
    (i32.const 0)
   )
   (i32.const 1456)
  )
  (i64.store
   (tee_local $12
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 160)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=160
   (get_local $13)
   (i64.load
    (get_local $9)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 160)
     )
     (i32.const 16)
    )
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 160)
    )
    (i32.const 52)
   )
   (i64.load align=4
    (i32.add
     (get_local $9)
     (i32.const 52)
    )
   )
  )
  (i64.store offset=204 align=4
   (get_local $13)
   (i64.load align=4
    (i32.add
     (get_local $9)
     (i32.const 44)
    )
   )
  )
  (i64.store offset=196 align=4
   (get_local $13)
   (i64.load align=4
    (i32.add
     (get_local $9)
     (i32.const 36)
    )
   )
  )
  (i64.store offset=188 align=4
   (get_local $13)
   (i64.load offset=28 align=4
    (get_local $9)
   )
  )
  (call $require_auth
   (i64.load
    (get_local $12)
   )
  )
  (call $eosio_assert
   (i32.eqz
    (i32.load offset=196
     (get_local $13)
    )
   )
   (i32.const 1488)
  )
  (call $eosio_assert
   (i32.le_u
    (i32.load offset=204
     (get_local $13)
    )
    (i32.load offset=208
     (get_local $13)
    )
   )
   (i32.const 1520)
  )
  (block $label$11
   (br_if $label$11
    (i32.eq
     (tee_local $8
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 156)
       )
      )
     )
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 152)
       )
      )
     )
    )
   )
   (set_local $9
    (i32.add
     (get_local $8)
     (i32.const -24)
    )
   )
   (set_local $7
    (i32.sub
     (i32.const 0)
     (get_local $6)
    )
   )
   (loop $label$12
    (br_if $label$11
     (i64.eq
      (i64.load
       (i32.load
        (get_local $9)
       )
      )
      (get_local $3)
     )
    )
    (set_local $8
     (get_local $9)
    )
    (set_local $9
     (tee_local $12
      (i32.add
       (get_local $9)
       (i32.const -24)
      )
     )
    )
    (br_if $label$12
     (i32.ne
      (i32.add
       (get_local $12)
       (get_local $7)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $12
   (i32.add
    (get_local $0)
    (i32.const 128)
   )
  )
  (block $label$13
   (block $label$14
    (br_if $label$14
     (i32.eq
      (get_local $8)
      (get_local $6)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=8
       (tee_local $9
        (i32.load
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $12)
     )
     (i32.const 16)
    )
    (set_local $8
     (i32.add
      (get_local $0)
      (i32.const 136)
     )
    )
    (br $label$13)
   )
   (set_local $9
    (i32.const 0)
   )
   (br_if $label$13
    (i32.lt_s
     (tee_local $7
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 128)
        )
       )
       (i64.load
        (tee_local $8
         (i32.add
          (get_local $0)
          (i32.const 136)
         )
        )
       )
       (i64.const -6146593681529088640)
       (get_local $3)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=8
      (tee_local $9
       (call $_ZNK5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE31load_object_by_primary_iteratorEl
        (get_local $12)
        (get_local $7)
       )
      )
     )
     (get_local $12)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (i32.eqz
    (get_local $9)
   )
   (i32.const 1552)
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (i32.add
      (get_local $0)
      (i32.const 128)
     )
    )
    (call $current_receiver)
   )
   (i32.const 128)
  )
  (i32.store offset=8
   (tee_local $9
    (call $_Znwj
     (i32.const 24)
    )
   )
   (get_local $12)
  )
  (i64.store
   (get_local $9)
   (get_local $3)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $13)
     (i32.const 256)
    )
    (get_local $9)
    (i32.const 8)
   )
  )
  (i32.store offset=12
   (get_local $9)
   (tee_local $8
    (call $db_store_i64
     (i64.load
      (get_local $8)
     )
     (i64.const -6146593681529088640)
     (get_local $1)
     (tee_local $10
      (i64.load
       (get_local $9)
      )
     )
     (i32.add
      (get_local $13)
      (i32.const 256)
     )
     (i32.const 8)
    )
   )
  )
  (block $label$15
   (br_if $label$15
    (i64.lt_u
     (get_local $10)
     (i64.load
      (tee_local $12
       (i32.add
        (get_local $0)
        (i32.const 144)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $12)
    (select
     (i64.const -2)
     (i64.add
      (get_local $10)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $10)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=248
   (get_local $13)
   (get_local $9)
  )
  (i64.store offset=256
   (get_local $13)
   (tee_local $10
    (i64.load
     (get_local $9)
    )
   )
  )
  (i32.store offset=244
   (get_local $13)
   (get_local $8)
  )
  (block $label$16
   (block $label$17
    (br_if $label$17
     (i32.ge_u
      (tee_local $12
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $0)
          (i32.const 156)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 160)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $12)
     (get_local $10)
    )
    (i32.store offset=16
     (get_local $12)
     (get_local $8)
    )
    (i32.store offset=248
     (get_local $13)
     (i32.const 0)
    )
    (i32.store
     (get_local $12)
     (get_local $9)
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $12)
      (i32.const 24)
     )
    )
    (br $label$16)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $0)
     (i32.const 152)
    )
    (i32.add
     (get_local $13)
     (i32.const 248)
    )
    (i32.add
     (get_local $13)
     (i32.const 256)
    )
    (i32.add
     (get_local $13)
     (i32.const 244)
    )
   )
  )
  (set_local $9
   (i32.load offset=248
    (get_local $13)
   )
  )
  (i32.store offset=248
   (get_local $13)
   (i32.const 0)
  )
  (block $label$18
   (br_if $label$18
    (i32.eqz
     (get_local $9)
    )
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (i64.store offset=256
   (get_local $13)
   (get_local $3)
  )
  (i64.store offset=272
   (get_local $13)
   (get_local $2)
  )
  (i32.store8 offset=280
   (get_local $13)
   (i32.const 100)
  )
  (i32.store8 offset=264
   (get_local $13)
   (i32.load8_u
    (i32.add
     (get_local $13)
     (i32.const 188)
    )
   )
  )
  (block $label$19
   (block $label$20
    (br_if $label$20
     (i32.ge_u
      (tee_local $9
       (i32.load
        (tee_local $12
         (i32.add
          (get_local $5)
          (i32.const 36)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 40)
       )
      )
     )
    )
    (i64.store
     (get_local $9)
     (i64.load offset=256
      (get_local $13)
     )
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 24)
     )
     (i64.load
      (i32.add
       (i32.add
        (get_local $13)
        (i32.const 256)
       )
       (i32.const 24)
      )
     )
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 16)
     )
     (i64.load
      (i32.add
       (i32.add
        (get_local $13)
        (i32.const 256)
       )
       (i32.const 16)
      )
     )
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i64.load
      (i32.add
       (i32.add
        (get_local $13)
        (i32.const 256)
       )
       (i32.const 8)
      )
     )
    )
    (i32.store
     (get_local $12)
     (i32.add
      (i32.load
       (get_local $12)
      )
      (i32.const 32)
     )
    )
    (br $label$19)
   )
   (call $_ZNSt3__16vectorIN5types11st_pet_statENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_
    (i32.add
     (get_local $5)
     (i32.const 32)
    )
    (i32.add
     (get_local $13)
     (i32.const 256)
    )
   )
  )
  (i32.store offset=256
   (get_local $13)
   (get_local $5)
  )
  (call $eosio_assert
   (get_local $4)
   (i32.const 80)
  )
  (call $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet12battleselpetENS_4nameES6_yE4$_10EEvRKS2_yOT_
   (i32.add
    (get_local $13)
    (i32.const 120)
   )
   (get_local $11)
   (i32.add
    (get_local $13)
    (i32.const 256)
   )
  )
  (block $label$21
   (br_if $label$21
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (get_local $13)
        (i32.const 176)
       )
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $13)
      (i32.const 184)
     )
    )
   )
  )
  (block $label$22
   (br_if $label$22
    (i32.eqz
     (tee_local $9
      (i32.load offset=32
       (get_local $5)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $5)
     (i32.const 36)
    )
    (get_local $9)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (block $label$23
   (br_if $label$23
    (i32.eqz
     (tee_local $9
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 20)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $5)
     (i32.const 24)
    )
    (get_local $9)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (block $label$24
   (br_if $label$24
    (i32.eqz
     (tee_local $8
      (i32.load offset=144
       (get_local $13)
      )
     )
    )
   )
   (block $label$25
    (block $label$26
     (br_if $label$26
      (i32.eq
       (tee_local $12
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $13)
           (i32.const 148)
          )
         )
        )
       )
       (get_local $8)
      )
     )
     (loop $label$27
      (set_local $9
       (i32.load
        (tee_local $12
         (i32.add
          (get_local $12)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $12)
       (i32.const 0)
      )
      (block $label$28
       (br_if $label$28
        (i32.eqz
         (get_local $9)
        )
       )
       (block $label$29
        (br_if $label$29
         (i32.eqz
          (tee_local $0
           (i32.load offset=32
            (get_local $9)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $9)
          (i32.const 36)
         )
         (get_local $0)
        )
        (call $_ZdlPv
         (get_local $0)
        )
       )
       (block $label$30
        (br_if $label$30
         (i32.eqz
          (tee_local $0
           (i32.load offset=20
            (get_local $9)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $9)
          (i32.const 24)
         )
         (get_local $0)
        )
        (call $_ZdlPv
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $9)
       )
      )
      (br_if $label$27
       (i32.ne
        (get_local $8)
        (get_local $12)
       )
      )
     )
     (set_local $9
      (i32.load
       (i32.add
        (get_local $13)
        (i32.const 144)
       )
      )
     )
     (br $label$25)
    )
    (set_local $9
     (get_local $8)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $8)
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $13)
    (i32.const 288)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=12
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=16
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i64.store offset=8
    (tee_local $6
     (call $_Znwj
      (i32.const 72)
     )
    )
    (i64.const 0)
   )
   (i64.store offset=16 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=24
    (get_local $6)
    (i32.const 0)
   )
   (i32.store offset=36
    (get_local $6)
    (i32.const 0)
   )
   (i32.store offset=48
    (get_local $6)
    (i32.const 0)
   )
   (i32.store offset=60
    (get_local $6)
    (get_local $0)
   )
   (i32.store offset=24
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $6)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (i32.store offset=44
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 28)
    )
   )
   (i32.store offset=48
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
   )
   (i32.store offset=52
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 36)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 40)
    )
   )
   (i32.store offset=60
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 44)
    )
   )
   (i32.store offset=64
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 48)
    )
   )
   (i32.store offset=68
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 52)
    )
   )
   (i32.store offset=72
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio4nameERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERhRmSI_SI_SI_SI_SI_SI_EEEZNS6_rsINS6_10datastreamIPKcEEN5types7st_petsELPv0EEERT_ST_RT0_EUlST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvST_OSU_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
   )
   (i32.store offset=68
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=64
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=32
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (tee_local $7
     (i32.load offset=64
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_17get_pets_by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (i32.and
       (i32.load8_u offset=16
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
  (get_local $6)
 )
 (func $_ZNK5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=8
    (tee_local $6
     (call $_Znwj
      (i32.const 24)
     )
    )
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 512)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (i32.store offset=12
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=12
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5types11st_pet_statENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJRS2_EEEvDpOT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.ge_u
       (tee_local $3
        (i32.add
         (tee_local $2
          (i32.shr_s
           (i32.sub
            (tee_local $6
             (i32.load offset=4
              (get_local $0)
             )
            )
            (tee_local $5
             (i32.load
              (get_local $0)
             )
            )
           )
           (i32.const 5)
          )
         )
         (i32.const 1)
        )
       )
       (i32.const 134217728)
      )
     )
     (set_local $4
      (i32.const 134217727)
     )
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.gt_u
         (i32.shr_s
          (tee_local $7
           (i32.sub
            (i32.load offset=8
             (get_local $0)
            )
            (get_local $5)
           )
          )
          (i32.const 5)
         )
         (i32.const 67108862)
        )
       )
       (br_if $label$3
        (i32.eqz
         (tee_local $4
          (select
           (get_local $3)
           (tee_local $4
            (i32.shr_s
             (get_local $7)
             (i32.const 4)
            )
           )
           (i32.lt_u
            (get_local $4)
            (get_local $3)
           )
          )
         )
        )
       )
       (br_if $label$1
        (i32.ge_u
         (get_local $4)
         (i32.const 134217728)
        )
       )
      )
      (set_local $7
       (call $_Znwj
        (i32.shl
         (get_local $4)
         (i32.const 5)
        )
       )
      )
      (set_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (set_local $5
       (i32.load
        (get_local $0)
       )
      )
      (br $label$0)
     )
     (set_local $4
      (i32.const 0)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $label$0)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (call $abort)
   (unreachable)
  )
  (i64.store
   (tee_local $3
    (i32.add
     (get_local $7)
     (i32.shl
      (get_local $2)
      (i32.const 5)
     )
    )
   )
   (i64.load
    (get_local $1)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $6
   (i32.sub
    (get_local $3)
    (tee_local $1
     (i32.sub
      (get_local $6)
      (get_local $5)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $7)
    (i32.shl
     (get_local $4)
     (i32.const 5)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_s
     (get_local $1)
     (i32.const 1)
    )
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $5)
     (get_local $1)
    )
   )
   (set_local $5
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $6)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $3)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (get_local $5)
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet12battleselpetENS_4nameES6_yE4$_10EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (set_local $12
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=44
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (set_local $3
   (i64.load
    (get_local $1)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $8
      (i32.load
       (get_local $2)
      )
     )
     (get_local $1)
    )
   )
   (call $_ZNSt3__16vectorIN5types11st_pet_statENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.load offset=32
     (get_local $8)
    )
    (i32.load
     (i32.add
      (get_local $8)
      (i32.const 36)
     )
    )
   )
   (br_if $label$0
    (i32.eq
     (tee_local $2
      (i32.load
       (get_local $2)
      )
     )
     (get_local $1)
    )
   )
   (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
    (i32.load offset=20
     (get_local $2)
    )
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 24)
     )
    )
   )
  )
  (i64.store32 offset=16
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 416)
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 20)
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.div_s
     (tee_local $9
      (i32.sub
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 24)
         )
        )
       )
       (tee_local $7
        (i32.load offset=20
         (get_local $1)
        )
       )
      )
     )
     (i32.const 80)
    )
   )
  )
  (set_local $2
   (i32.const 89)
  )
  (loop $label$1
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $6)
     )
    )
    (set_local $2
     (i32.add
      (i32.mul
       (i32.div_u
        (i32.add
         (get_local $9)
         (i32.const -80)
        )
        (i32.const 80)
       )
       (i32.const 72)
      )
      (get_local $2)
     )
    )
    (br $label$2)
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -72)
    )
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $9
      (i32.sub
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 36)
         )
        )
       )
       (tee_local $7
        (i32.load
         (get_local $8)
        )
       )
      )
     )
     (i32.const 5)
    )
   )
  )
  (loop $label$4
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (set_local $2
    (i32.add
     (i32.add
      (i32.mul
       (i32.shr_u
        (i32.add
         (get_local $9)
         (i32.const -32)
        )
        (i32.const 5)
       )
       (i32.const 18)
      )
      (get_local $2)
     )
     (i32.const 18)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $11
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$6)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $11
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $12)
   (get_local $11)
  )
  (i32.store
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=8
   (get_local $12)
   (i32.add
    (get_local $11)
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $12)
   (get_local $12)
  )
  (i32.store offset=36
   (get_local $12)
   (get_local $4)
  )
  (i32.store offset=40
   (get_local $12)
   (get_local $5)
  )
  (i32.store offset=44
   (get_local $12)
   (get_local $8)
  )
  (i32.store offset=24
   (get_local $12)
   (get_local $1)
  )
  (i32.store offset=28
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=32
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio4nameERKhRKmSC_RKNSt3__16vectorIN5types9st_commitENSD_9allocatorISG_EEEERKNSE_INSF_11st_pet_statENSH_ISM_EEEEEEEZNS5_lsINS5_10datastreamIPcEENSF_9st_battleELPv0EEERT_SZ_RKT0_EUlRKSY_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSZ_OS10_NSD_16integer_sequenceIjJXspT1_EEEENSD_17integral_constantIbLb0EEE
   (i32.add
    (get_local $12)
    (i32.const 24)
   )
   (i32.add
    (get_local $12)
    (i32.const 16)
   )
  )
  (call $db_update_i64
   (i32.load offset=48
    (get_local $1)
   )
   (i64.const 0)
   (get_local $11)
   (get_local $2)
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $11)
   )
  )
  (block $label$9
   (br_if $label$9
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 48)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5types11st_pet_statENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.le_u
        (tee_local $4
         (i32.shr_s
          (tee_local $3
           (i32.sub
            (get_local $2)
            (get_local $1)
           )
          )
          (i32.const 5)
         )
        )
        (i32.shr_s
         (i32.sub
          (tee_local $8
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $5
           (i32.load
            (get_local $0)
           )
          )
         )
         (i32.const 5)
        )
       )
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (i32.store offset=4
        (get_local $0)
        (get_local $5)
       )
       (call $_ZdlPv
        (get_local $5)
       )
       (set_local $8
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.const 0)
       )
       (i64.store align=4
        (get_local $0)
        (i64.const 0)
       )
      )
      (br_if $label$0
       (i32.ge_u
        (get_local $4)
        (i32.const 134217728)
       )
      )
      (set_local $5
       (i32.const 134217727)
      )
      (block $label$5
       (br_if $label$5
        (i32.gt_u
         (i32.shr_s
          (get_local $8)
          (i32.const 5)
         )
         (i32.const 67108862)
        )
       )
       (set_local $5
        (get_local $4)
       )
       (br_if $label$5
        (i32.lt_u
         (tee_local $2
          (i32.shr_s
           (get_local $8)
           (i32.const 4)
          )
         )
         (get_local $4)
        )
       )
       (set_local $5
        (get_local $2)
       )
       (br_if $label$0
        (i32.ge_u
         (get_local $2)
         (i32.const 134217728)
        )
       )
      )
      (i32.store
       (get_local $0)
       (tee_local $5
        (call $_Znwj
         (tee_local $4
          (i32.shl
           (get_local $5)
           (i32.const 5)
          )
         )
        )
       )
      )
      (i32.store offset=4
       (get_local $0)
       (get_local $5)
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.add
        (get_local $5)
        (get_local $4)
       )
      )
      (br_if $label$2
       (i32.lt_s
        (get_local $3)
        (i32.const 1)
       )
      )
      (drop
       (call $memcpy
        (get_local $5)
        (get_local $1)
        (get_local $3)
       )
      )
      (i32.store
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (i32.add
        (i32.load
         (get_local $0)
        )
        (get_local $3)
       )
      )
      (return)
     )
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (tee_local $7
         (i32.shr_s
          (tee_local $6
           (i32.sub
            (tee_local $8
             (select
              (i32.add
               (get_local $1)
               (tee_local $3
                (i32.sub
                 (i32.load offset=4
                  (get_local $0)
                 )
                 (get_local $5)
                )
               )
              )
              (get_local $2)
              (i32.gt_u
               (get_local $4)
               (tee_local $3
                (i32.shr_s
                 (get_local $3)
                 (i32.const 5)
                )
               )
              )
             )
            )
            (get_local $1)
           )
          )
          (i32.const 5)
         )
        )
       )
      )
      (drop
       (call $memmove
        (get_local $5)
        (get_local $1)
        (get_local $6)
       )
      )
     )
     (br_if $label$1
      (i32.le_u
       (get_local $4)
       (get_local $3)
      )
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $1
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (get_local $8)
       (get_local $1)
      )
     )
     (i32.store
      (get_local $0)
      (i32.add
       (i32.load
        (get_local $0)
       )
       (get_local $1)
      )
     )
     (return)
    )
    (return)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $5)
     (i32.shl
      (get_local $7)
      (i32.const 5)
     )
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (get_local $0)
  )
  (unreachable)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRN5eosio4nameERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEERhRmSI_SI_SI_SI_SI_SI_EEEZNS6_rsINS6_10datastreamIPKcEEN5types7st_petsELPv0EEERT_ST_RT0_EUlST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvST_OSU_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $2
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_17get_pets_by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (i32.and
         (i32.load8_u offset=16
          (get_local $1)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 24)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
    (get_local $0)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.ne
             (tee_local $5
              (i32.load offset=20
               (get_local $7)
              )
             )
             (tee_local $4
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$7
            (i32.and
             (i32.load8_u
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.store16
            (get_local $1)
            (i32.const 0)
           )
           (set_local $4
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (br $label$6)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $7)
           (i64.const 0)
          )
          (br_if $label$0
           (i32.ge_u
            (tee_local $2
             (i32.sub
              (get_local $5)
              (get_local $4)
             )
            )
            (i32.const -16)
           )
          )
          (br_if $label$5
           (i32.ge_u
            (get_local $2)
            (i32.const 11)
           )
          )
          (i32.store8
           (get_local $7)
           (i32.shl
            (get_local $2)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.or
            (get_local $7)
            (i32.const 1)
           )
          )
          (br_if $label$4
           (get_local $2)
          )
          (br $label$3)
         )
         (i32.store8
          (i32.load offset=8
           (get_local $1)
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $1)
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
         (get_local $1)
         (i32.const 0)
        )
        (i32.store
         (get_local $4)
         (i32.const 0)
        )
        (i64.store align=4
         (get_local $1)
         (i64.const 0)
        )
        (br_if $label$2
         (tee_local $4
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
        (br $label$1)
       )
       (set_local $6
        (call $_Znwj
         (tee_local $5
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const 16)
           )
           (i32.const -16)
          )
         )
        )
       )
       (i32.store
        (get_local $7)
        (i32.or
         (get_local $5)
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $6)
       )
       (i32.store offset=4
        (get_local $7)
        (get_local $2)
       )
      )
      (set_local $3
       (get_local $2)
      )
      (set_local $5
       (get_local $6)
      )
      (loop $label$9
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $4)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (br_if $label$9
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (i32.store8
      (get_local $6)
      (i32.const 0)
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (i32.and
         (i32.load8_u
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store16
        (get_local $1)
        (i32.const 0)
       )
       (br $label$10)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (get_local $1)
      (i64.load
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load offset=16
         (get_local $7)
        )
       )
      )
     )
    )
    (i32.store offset=20
     (get_local $7)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $7)
  )
  (unreachable)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 896)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $_ZN3pet12battleattackEN5eosio4nameES1_yyh (type $FUNCSIG$vijjjji) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i64)
  (local $22 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $22
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 304)
    )
   )
  )
  (call $require_auth
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $22)
    (i32.const 184)
   )
   (i32.const 0)
  )
  (i64.store offset=168
   (get_local $22)
   (i64.const -1)
  )
  (i64.store offset=176
   (get_local $22)
   (i64.const 0)
  )
  (i64.store offset=152
   (get_local $22)
   (tee_local $12
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=160
   (get_local $22)
   (get_local $12)
  )
  (set_local $17
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $13
      (call $db_find_i64
       (get_local $12)
       (get_local $12)
       (i64.const 4157834741199929344)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (tee_local $17
       (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $22)
         (i32.const 152)
        )
        (get_local $13)
       )
      )
     )
     (i32.add
      (get_local $22)
      (i32.const 152)
     )
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $6
    (i32.ne
     (get_local $17)
     (i32.const 0)
    )
   )
   (i32.const 1104)
  )
  (set_local $7
   (call $_ZN5types9st_battleC2ERKS0_
    (i32.add
     (get_local $22)
     (i32.const 104)
    )
    (get_local $17)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $22)
    (i32.const 32)
   )
   (get_local $0)
  )
  (set_local $13
   (i32.load offset=20
    (get_local $7)
   )
  )
  (call $eosio_assert
   (i32.or
    (i32.gt_u
     (i32.sub
      (i32.wrap/i64
       (i64.div_u
        (call $current_time)
        (i64.const 1000000)
       )
      )
      (i32.load offset=16
       (get_local $7)
      )
     )
     (i32.load offset=84
      (get_local $22)
     )
    )
    (i64.eq
     (i64.load
      (get_local $13)
     )
     (get_local $2)
    )
   )
   (i32.const 1424)
  )
  (block $label$1
   (br_if $label$1
    (i64.ne
     (i64.load
      (get_local $13)
     )
     (get_local $2)
    )
   )
   (br_if $label$1
    (i32.eq
     (tee_local $20
      (i32.add
       (tee_local $13
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const 20)
         )
        )
       )
       (i32.const 80)
      )
     )
     (tee_local $19
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 24)
       )
      )
     )
    )
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $22)
      (i32.const 192)
     )
     (get_local $13)
     (i32.const 80)
    )
   )
   (set_local $18
    (i32.div_s
     (tee_local $19
      (i32.sub
       (get_local $19)
       (get_local $20)
      )
     )
     (i32.const 80)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (get_local $19)
     )
    )
    (drop
     (call $memmove
      (get_local $13)
      (get_local $20)
      (get_local $19)
     )
    )
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $13)
      (i32.mul
       (get_local $18)
       (i32.const 80)
      )
     )
     (i32.add
      (get_local $22)
      (i32.const 192)
     )
     (i32.const 80)
    )
   )
  )
  (set_local $20
   (i32.const 0)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eq
      (tee_local $13
       (i32.load offset=32
        (get_local $7)
       )
      )
      (tee_local $19
       (i32.load
        (i32.add
         (get_local $7)
         (i32.const 36)
        )
       )
      )
     )
    )
    (set_local $18
     (i32.const 0)
    )
    (set_local $15
     (i32.const 0)
    )
    (set_local $10
     (i32.const 0)
    )
    (loop $label$5
     (block $label$6
      (block $label$7
       (br_if $label$7
        (i64.ne
         (tee_local $12
          (i64.load
           (get_local $13)
          )
         )
         (get_local $3)
        )
       )
       (call $eosio_assert
        (i64.eq
         (i64.load
          (i32.add
           (get_local $13)
           (i32.const 16)
          )
         )
         (get_local $2)
        )
        (i32.const 1648)
       )
       (call $eosio_assert
        (i32.ne
         (i32.load8_u
          (i32.add
           (get_local $13)
           (i32.const 24)
          )
         )
         (i32.const 0)
        )
        (i32.const 1680)
       )
       (set_local $18
        (i32.load8_u
         (i32.add
          (get_local $13)
          (i32.const 8)
         )
        )
       )
       (set_local $10
        (i32.const 1)
       )
       (br $label$6)
      )
      (br_if $label$6
       (i64.ne
        (get_local $12)
        (get_local $4)
       )
      )
      (set_local $15
       (i32.load8_u
        (i32.add
         (get_local $13)
         (i32.const 8)
        )
       )
      )
     )
     (br_if $label$5
      (i32.ne
       (get_local $19)
       (tee_local $13
        (i32.add
         (get_local $13)
         (i32.const 32)
        )
       )
      )
     )
     (br $label$3)
    )
   )
   (set_local $10
    (i32.const 0)
   )
   (set_local $15
    (i32.const 0)
   )
   (set_local $18
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (i32.and
    (get_local $10)
    (i32.const 1)
   )
   (i32.const 1600)
  )
  (block $label$8
   (br_if $label$8
    (i32.eq
     (tee_local $13
      (i32.load offset=8
       (tee_local $19
        (call $_ZNK5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE3getEyPKc
         (tee_local $10
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
         )
         (i64.extend_u/i32
          (i32.and
           (get_local $18)
           (i32.const 255)
          )
         )
         (i32.const 1616)
        )
       )
      )
     )
     (tee_local $19
      (i32.load
       (i32.add
        (get_local $19)
        (i32.const 12)
       )
      )
     )
    )
   )
   (set_local $18
    (i32.add
     (get_local $19)
     (i32.const -1)
    )
   )
   (set_local $20
    (i32.const 0)
   )
   (loop $label$9
    (set_local $20
     (i32.or
      (get_local $20)
      (tee_local $19
       (i32.eq
        (i32.load8_u
         (get_local $13)
        )
        (get_local $5)
       )
      )
     )
    )
    (br_if $label$8
     (get_local $19)
    )
    (set_local $19
     (i32.ne
      (get_local $18)
      (get_local $13)
     )
    )
    (set_local $13
     (i32.add
      (get_local $13)
      (i32.const 1)
     )
    )
    (br_if $label$9
     (get_local $19)
    )
   )
  )
  (call $eosio_assert
   (i32.and
    (get_local $20)
    (i32.const 1)
   )
   (i32.const 1712)
  )
  (set_local $19
   (call $_ZNK5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE3getEyPKc
    (i32.add
     (get_local $0)
     (i32.const 48)
    )
    (i64.extend_u/i32
     (get_local $5)
    )
    (i32.const 1744)
   )
  )
  (block $label$10
   (block $label$11
    (br_if $label$11
     (i32.eq
      (tee_local $20
       (i32.load offset=8
        (tee_local $13
         (call $_ZNK5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE3getEyPKc
          (get_local $10)
          (i64.extend_u/i32
           (i32.and
            (get_local $15)
            (i32.const 255)
           )
          )
          (i32.const 1760)
         )
        )
       )
      )
      (tee_local $5
       (i32.load
        (i32.add
         (get_local $13)
         (i32.const 12)
        )
       )
      )
     )
    )
    (set_local $18
     (i32.load offset=8
      (get_local $19)
     )
    )
    (set_local $13
     (i32.const 5)
    )
    (loop $label$12
     (set_local $13
      (select
       (tee_local $19
        (i32.load8_u
         (i32.add
          (get_local $18)
          (i32.load8_u
           (get_local $20)
          )
         )
        )
       )
       (get_local $13)
       (i32.gt_u
        (get_local $19)
        (i32.and
         (get_local $13)
         (i32.const 255)
        )
       )
      )
     )
     (br_if $label$12
      (i32.ne
       (get_local $5)
       (tee_local $20
        (i32.add
         (get_local $20)
         (i32.const 1)
        )
       )
      )
     )
     (br $label$10)
    )
   )
   (set_local $13
    (i32.const 5)
   )
  )
  (call $sha256
   (i32.load
    (i32.add
     (get_local $7)
     (i32.const 20)
    )
   )
   (i32.const 160)
   (i32.add
    (get_local $22)
    (i32.const 192)
   )
  )
  (set_local $19
   (i32.load8_u offset=192
    (get_local $22)
   )
  )
  (set_local $5
   (i32.load8_u offset=193
    (get_local $22)
   )
  )
  (set_local $12
   (call $current_time)
  )
  (set_local $20
   (i32.load8_u offset=88
    (get_local $22)
   )
  )
  (set_local $18
   (i32.load8_u offset=89
    (get_local $22)
   )
  )
  (call $prints
   (i32.const 1792)
  )
  (call $printi
   (i64.extend_u/i32
    (tee_local $9
     (i32.and
      (tee_local $8
       (i32.div_u
        (i32.mul
         (tee_local $20
          (i32.and
           (i32.add
            (get_local $20)
            (i32.rem_u
             (i32.add
              (i32.add
               (get_local $19)
               (get_local $5)
              )
              (i32.wrap/i64
               (i64.div_u
                (get_local $12)
                (i64.const 1000000)
               )
              )
             )
             (i32.sub
              (i32.add
               (get_local $18)
               (i32.const 1)
              )
              (get_local $20)
             )
            )
           )
           (i32.const 255)
          )
         )
         (tee_local $13
          (i32.and
           (get_local $13)
           (i32.const 255)
          )
         )
        )
        (i32.const 10)
       )
      )
      (i32.const 255)
     )
    )
   )
  )
  (call $prints
   (i32.const 1840)
  )
  (call $printi
   (i64.extend_u/i32
    (get_local $13)
   )
  )
  (call $prints
   (i32.const 1872)
  )
  (call $printi
   (i64.extend_u/i32
    (get_local $20)
   )
  )
  (i32.store offset=24
   (get_local $22)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $22)
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $22)
   (tee_local $10
    (i32.or
     (i32.add
      (get_local $22)
      (i32.const 16)
     )
     (i32.const 4)
    )
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $21
   (i64.const 0)
  )
  (block $label$13
   (block $label$14
    (br_if $label$14
     (i32.eq
      (tee_local $5
       (i32.load
        (i32.add
         (get_local $7)
         (i32.const 32)
        )
       )
      )
      (tee_local $11
       (i32.load
        (i32.add
         (get_local $7)
         (i32.const 36)
        )
       )
      )
     )
    )
    (set_local $16
     (i32.add
      (get_local $22)
      (i32.const 24)
     )
    )
    (loop $label$15
     (set_local $18
      (i32.load8_u offset=24
       (get_local $5)
      )
     )
     (block $label$16
      (br_if $label$16
       (i64.ne
        (i64.load
         (get_local $5)
        )
        (get_local $4)
       )
      )
      (i32.store8
       (i32.add
        (get_local $5)
        (i32.const 24)
       )
       (tee_local $18
        (select
         (i32.const 0)
         (i32.sub
          (get_local $18)
          (get_local $8)
         )
         (i32.lt_u
          (get_local $18)
          (get_local $9)
         )
        )
       )
      )
     )
     (set_local $15
      (i32.and
       (get_local $18)
       (i32.const 255)
      )
     )
     (set_local $12
      (i64.load offset=16
       (get_local $5)
      )
     )
     (block $label$17
      (block $label$18
       (block $label$19
        (br_if $label$19
         (i32.eqz
          (tee_local $13
           (i32.load offset=20
            (get_local $22)
           )
          )
         )
        )
        (set_local $20
         (get_local $10)
        )
        (loop $label$20
         (block $label$21
          (block $label$22
           (br_if $label$22
            (i64.ge_u
             (get_local $12)
             (tee_local $3
              (i64.load offset=16
               (get_local $13)
              )
             )
            )
           )
           (br_if $label$21
            (tee_local $19
             (i32.load
              (get_local $13)
             )
            )
           )
           (br $label$18)
          )
          (br_if $label$17
           (i64.ge_u
            (get_local $3)
            (get_local $12)
           )
          )
          (set_local $20
           (i32.add
            (get_local $13)
            (i32.const 4)
           )
          )
          (br_if $label$17
           (i32.eqz
            (tee_local $19
             (i32.load offset=4
              (get_local $13)
             )
            )
           )
          )
          (set_local $13
           (get_local $20)
          )
         )
         (set_local $20
          (get_local $13)
         )
         (set_local $13
          (get_local $19)
         )
         (br $label$20)
        )
       )
       (set_local $13
        (get_local $10)
       )
       (set_local $20
        (get_local $10)
       )
       (br $label$17)
      )
      (set_local $20
       (get_local $13)
      )
     )
     (set_local $15
      (i32.ne
       (get_local $15)
       (i32.const 0)
      )
     )
     (block $label$23
      (block $label$24
       (br_if $label$24
        (i32.eqz
         (tee_local $19
          (i32.load
           (get_local $20)
          )
         )
        )
       )
       (i32.store8
        (tee_local $13
         (i32.add
          (get_local $19)
          (i32.const 24)
         )
        )
        (i32.add
         (i32.load8_u
          (get_local $13)
         )
         (get_local $15)
        )
       )
       (br $label$23)
      )
      (i64.store offset=16
       (tee_local $19
        (call $_Znwj
         (i32.const 32)
        )
       )
       (get_local $12)
      )
      (i64.store align=4
       (get_local $19)
       (i64.const 0)
      )
      (i32.store offset=8
       (get_local $19)
       (get_local $13)
      )
      (i32.store
       (get_local $20)
       (get_local $19)
      )
      (i32.store8 offset=24
       (get_local $19)
       (get_local $15)
      )
      (block $label$25
       (br_if $label$25
        (i32.eqz
         (tee_local $13
          (i32.load
           (i32.load offset=16
            (get_local $22)
           )
          )
         )
        )
       )
       (i32.store offset=16
        (get_local $22)
        (get_local $13)
       )
       (set_local $19
        (i32.load
         (get_local $20)
        )
       )
      )
      (call $_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_
       (i32.load offset=20
        (get_local $22)
       )
       (get_local $19)
      )
      (i32.store
       (get_local $16)
       (i32.add
        (i32.load
         (get_local $16)
        )
        (i32.const 1)
       )
      )
      (set_local $18
       (i32.load8_u
        (i32.add
         (get_local $5)
         (i32.const 24)
        )
       )
      )
     )
     (call $prints
      (i32.const 1904)
     )
     (call $printui
      (i64.load
       (get_local $5)
      )
     )
     (call $prints
      (i32.const 1920)
     )
     (call $printi
      (i64.extend_u/i32
       (i32.and
        (get_local $18)
        (i32.const 255)
       )
      )
     )
     (br_if $label$15
      (i32.ne
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 32)
        )
       )
       (get_local $11)
      )
     )
    )
    (set_local $21
     (i64.const 0)
    )
    (br_if $label$14
     (i32.eq
      (tee_local $20
       (i32.load offset=16
        (get_local $22)
       )
      )
      (get_local $10)
     )
    )
    (set_local $5
     (i32.const 0)
    )
    (loop $label$26
     (block $label$27
      (br_if $label$27
       (i32.eqz
        (i32.load8_u offset=24
         (tee_local $19
          (get_local $20)
         )
        )
       )
      )
      (set_local $5
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $21
       (i64.load offset=16
        (get_local $19)
       )
      )
     )
     (block $label$28
      (block $label$29
       (br_if $label$29
        (i32.eqz
         (tee_local $13
          (i32.load offset=4
           (get_local $19)
          )
         )
        )
       )
       (loop $label$30
        (br_if $label$30
         (tee_local $13
          (i32.load
           (tee_local $20
            (get_local $13)
           )
          )
         )
        )
        (br $label$28)
       )
      )
      (br_if $label$28
       (i32.eq
        (i32.load
         (tee_local $20
          (i32.load offset=8
           (get_local $19)
          )
         )
        )
        (get_local $19)
       )
      )
      (set_local $19
       (i32.add
        (get_local $19)
        (i32.const 8)
       )
      )
      (loop $label$31
       (set_local $19
        (i32.add
         (tee_local $13
          (i32.load
           (get_local $19)
          )
         )
         (i32.const 8)
        )
       )
       (br_if $label$31
        (i32.ne
         (get_local $13)
         (i32.load
          (tee_local $20
           (i32.load offset=8
            (get_local $13)
           )
          )
         )
        )
       )
      )
     )
     (br_if $label$26
      (i32.ne
       (get_local $20)
       (get_local $10)
      )
     )
    )
    (br_if $label$14
     (i32.le_u
      (i32.and
       (get_local $5)
       (i32.const 255)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=272
     (get_local $22)
     (get_local $7)
    )
    (call $eosio_assert
     (get_local $6)
     (i32.const 80)
    )
    (call $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet12battleattackENS_4nameES6_yyhE4$_11EEvRKS2_yOT_
     (i32.add
      (get_local $22)
      (i32.const 152)
     )
     (get_local $17)
     (i32.add
      (get_local $22)
      (i32.const 272)
     )
    )
    (br $label$13)
   )
   (call $prints
    (i32.const 1936)
   )
   (call $printn
    (get_local $21)
   )
   (set_local $14
    (i64.load
     (get_local $0)
    )
   )
   (set_local $3
    (i64.const 59)
   )
   (set_local $13
    (i32.const 1088)
   )
   (set_local $4
    (i64.const 0)
   )
   (loop $label$32
    (block $label$33
     (block $label$34
      (block $label$35
       (block $label$36
        (block $label$37
         (br_if $label$37
          (i64.gt_u
           (get_local $2)
           (i64.const 5)
          )
         )
         (br_if $label$36
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $20
              (i32.load8_s
               (get_local $13)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $20
          (i32.add
           (get_local $20)
           (i32.const 165)
          )
         )
         (br $label$35)
        )
        (set_local $12
         (i64.const 0)
        )
        (br_if $label$34
         (i64.le_u
          (get_local $2)
          (i64.const 11)
         )
        )
        (br $label$33)
       )
       (set_local $20
        (select
         (i32.add
          (get_local $20)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $20)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $12
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $20)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $12
      (i64.shl
       (i64.and
        (get_local $12)
        (i64.const 31)
       )
       (i64.and
        (get_local $3)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $13
     (i32.add
      (get_local $13)
      (i32.const 1)
     )
    )
    (set_local $2
     (i64.add
      (get_local $2)
      (i64.const 1)
     )
    )
    (set_local $4
     (i64.or
      (get_local $12)
      (get_local $4)
     )
    )
    (br_if $label$32
     (i64.ne
      (tee_local $3
       (i64.add
        (get_local $3)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (i64.store
    (tee_local $13
     (call $_Znwj
      (i32.const 16)
     )
    )
    (get_local $14)
   )
   (i64.store offset=8
    (get_local $13)
    (get_local $4)
   )
   (i32.store offset=296
    (get_local $22)
    (tee_local $20
     (i32.add
      (get_local $13)
      (i32.const 16)
     )
    )
   )
   (i64.store offset=280
    (get_local $22)
    (get_local $21)
   )
   (i64.store
    (i32.add
     (get_local $22)
     (i32.const 8)
    )
    (i64.load offset=280
     (get_local $22)
    )
   )
   (i32.store offset=288
    (get_local $22)
    (get_local $13)
   )
   (i32.store offset=292
    (get_local $22)
    (get_local $20)
   )
   (i64.store offset=272
    (get_local $22)
    (get_local $1)
   )
   (i64.store
    (get_local $22)
    (i64.load offset=272
     (get_local $22)
    )
   )
   (call $_ZN5eosio15dispatch_inlineIJNS_4nameES1_EEEvyyNSt3__16vectorINS_16permission_levelENS2_9allocatorIS4_EEEENS2_5tupleIJDpT_EEE
    (get_local $14)
    (i64.const 4157834734465691856)
    (i32.add
     (get_local $22)
     (i32.const 288)
    )
    (get_local $22)
   )
   (br_if $label$13
    (i32.eqz
     (tee_local $13
      (i32.load offset=288
       (get_local $22)
      )
     )
    )
   )
   (i32.store offset=292
    (get_local $22)
    (get_local $13)
   )
   (call $_ZdlPv
    (get_local $13)
   )
  )
  (call $_ZNSt3__16__treeINS_12__value_typeIN5eosio4nameEhEENS_19__map_value_compareIS3_S4_NS_4lessIS3_EELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE
   (i32.add
    (get_local $22)
    (i32.const 16)
   )
   (i32.load offset=20
    (get_local $22)
   )
  )
  (block $label$38
   (br_if $label$38
    (i32.eqz
     (tee_local $13
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 36)
    )
    (get_local $13)
   )
   (call $_ZdlPv
    (get_local $13)
   )
  )
  (block $label$39
   (br_if $label$39
    (i32.eqz
     (tee_local $13
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 20)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 24)
    )
    (get_local $13)
   )
   (call $_ZdlPv
    (get_local $13)
   )
  )
  (block $label$40
   (br_if $label$40
    (i32.eqz
     (tee_local $5
      (i32.load offset=176
       (get_local $22)
      )
     )
    )
   )
   (block $label$41
    (block $label$42
     (br_if $label$42
      (i32.eq
       (tee_local $20
        (i32.load
         (tee_local $18
          (i32.add
           (get_local $22)
           (i32.const 180)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$43
      (set_local $13
       (i32.load
        (tee_local $20
         (i32.add
          (get_local $20)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $20)
       (i32.const 0)
      )
      (block $label$44
       (br_if $label$44
        (i32.eqz
         (get_local $13)
        )
       )
       (block $label$45
        (br_if $label$45
         (i32.eqz
          (tee_local $19
           (i32.load offset=32
            (get_local $13)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $13)
          (i32.const 36)
         )
         (get_local $19)
        )
        (call $_ZdlPv
         (get_local $19)
        )
       )
       (block $label$46
        (br_if $label$46
         (i32.eqz
          (tee_local $19
           (i32.load offset=20
            (get_local $13)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $13)
          (i32.const 24)
         )
         (get_local $19)
        )
        (call $_ZdlPv
         (get_local $19)
        )
       )
       (call $_ZdlPv
        (get_local $13)
       )
      )
      (br_if $label$43
       (i32.ne
        (get_local $5)
        (get_local $20)
       )
      )
     )
     (set_local $13
      (i32.load
       (i32.add
        (get_local $22)
        (i32.const 176)
       )
      )
     )
     (br $label$41)
    )
    (set_local $13
     (get_local $5)
    )
   )
   (i32.store
    (get_local $18)
    (get_local $5)
   )
   (call $_ZdlPv
    (get_local $13)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $22)
    (i32.const 304)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=20
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $0)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -6146393877533163520)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=20
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy12300350196176388096EN5types12st_pet_typesEJEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZNK5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=20
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $0)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const 6076804294378520576)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=20
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy6076804294378520576EN5types11st_elementsEJEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store8 offset=12
   (get_local $1)
   (tee_local $3
    (i32.eq
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (get_local $3)
     )
     (block $label$3
      (block $label$4
       (block $label$5
        (loop $label$6
         (br_if $label$2
          (i32.load8_u offset=12
           (tee_local $2
            (i32.load offset=8
             (get_local $1)
            )
           )
          )
         )
         (block $label$7
          (block $label$8
           (block $label$9
            (br_if $label$9
             (i32.eq
              (tee_local $4
               (i32.load
                (tee_local $3
                 (i32.load offset=8
                  (get_local $2)
                 )
                )
               )
              )
              (get_local $2)
             )
            )
            (br_if $label$7
             (i32.eqz
              (get_local $4)
             )
            )
            (br_if $label$7
             (i32.load8_u offset=12
              (get_local $4)
             )
            )
            (set_local $4
             (i32.add
              (get_local $4)
              (i32.const 12)
             )
            )
            (br $label$8)
           )
           (br_if $label$5
            (i32.eqz
             (tee_local $4
              (i32.load offset=4
               (get_local $3)
              )
             )
            )
           )
           (br_if $label$5
            (i32.load8_u offset=12
             (get_local $4)
            )
           )
           (set_local $4
            (i32.add
             (get_local $4)
             (i32.const 12)
            )
           )
          )
          (i32.store8
           (i32.add
            (get_local $2)
            (i32.const 12)
           )
           (i32.const 1)
          )
          (i32.store8 offset=12
           (get_local $3)
           (tee_local $2
            (i32.eq
             (get_local $3)
             (get_local $0)
            )
           )
          )
          (i32.store8
           (get_local $4)
           (i32.const 1)
          )
          (set_local $1
           (get_local $3)
          )
          (br_if $label$6
           (i32.eqz
            (get_local $2)
           )
          )
          (br $label$2)
         )
        )
        (br_if $label$4
         (i32.eq
          (i32.load
           (get_local $2)
          )
          (get_local $1)
         )
        )
        (set_local $4
         (get_local $2)
        )
        (br $label$3)
       )
       (br_if $label$1
        (i32.eq
         (i32.load
          (get_local $2)
         )
         (get_local $1)
        )
       )
       (i32.store offset=4
        (get_local $2)
        (tee_local $1
         (i32.load
          (tee_local $4
           (i32.load offset=4
            (get_local $2)
           )
          )
         )
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.eqz
          (get_local $1)
         )
        )
        (i32.store offset=8
         (get_local $1)
         (get_local $2)
        )
        (set_local $3
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 8)
          )
         )
        )
       )
       (i32.store offset=8
        (get_local $4)
        (get_local $3)
       )
       (i32.store
        (select
         (tee_local $3
          (i32.load
           (tee_local $1
            (i32.add
             (get_local $2)
             (i32.const 8)
            )
           )
          )
         )
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
         (i32.eq
          (i32.load
           (get_local $3)
          )
          (get_local $2)
         )
        )
        (get_local $4)
       )
       (i32.store
        (get_local $1)
        (get_local $4)
       )
       (i32.store
        (get_local $4)
        (get_local $2)
       )
       (set_local $3
        (i32.load offset=8
         (get_local $4)
        )
       )
       (br $label$0)
      )
      (i32.store
       (get_local $2)
       (tee_local $1
        (i32.load offset=4
         (tee_local $4
          (i32.load
           (get_local $2)
          )
         )
        )
       )
      )
      (block $label$11
       (br_if $label$11
        (i32.eqz
         (get_local $1)
        )
       )
       (i32.store offset=8
        (get_local $1)
        (get_local $2)
       )
       (set_local $3
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
      )
      (i32.store offset=8
       (get_local $4)
       (get_local $3)
      )
      (i32.store
       (select
        (tee_local $3
         (i32.load
          (tee_local $1
           (i32.add
            (get_local $2)
            (i32.const 8)
           )
          )
         )
        )
        (i32.add
         (get_local $3)
         (i32.const 4)
        )
        (i32.eq
         (i32.load
          (get_local $3)
         )
         (get_local $2)
        )
       )
       (get_local $4)
      )
      (i32.store
       (get_local $1)
       (get_local $4)
      )
      (i32.store
       (i32.add
        (get_local $4)
        (i32.const 4)
       )
       (get_local $2)
      )
      (set_local $3
       (i32.load offset=8
        (get_local $4)
       )
      )
     )
     (i32.store8 offset=12
      (get_local $4)
      (i32.const 1)
     )
     (i32.store8 offset=12
      (get_local $3)
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $3)
      (tee_local $4
       (i32.load
        (tee_local $2
         (i32.load offset=4
          (get_local $3)
         )
        )
       )
      )
     )
     (block $label$12
      (br_if $label$12
       (i32.eqz
        (get_local $4)
       )
      )
      (i32.store offset=8
       (get_local $4)
       (get_local $3)
      )
     )
     (i32.store offset=8
      (get_local $2)
      (i32.load offset=8
       (get_local $3)
      )
     )
     (i32.store
      (select
       (tee_local $4
        (i32.load offset=8
         (get_local $3)
        )
       )
       (i32.add
        (get_local $4)
        (i32.const 4)
       )
       (i32.eq
        (i32.load
         (get_local $4)
        )
        (get_local $3)
       )
      )
      (get_local $2)
     )
     (i32.store offset=8
      (get_local $3)
      (get_local $2)
     )
     (i32.store
      (get_local $2)
      (get_local $3)
     )
    )
    (return)
   )
   (set_local $4
    (get_local $2)
   )
  )
  (i32.store8 offset=12
   (get_local $4)
   (i32.const 1)
  )
  (i32.store8 offset=12
   (get_local $3)
   (i32.const 0)
  )
  (i32.store
   (get_local $3)
   (tee_local $4
    (i32.load offset=4
     (tee_local $2
      (i32.load
       (get_local $3)
      )
     )
    )
   )
  )
  (block $label$13
   (br_if $label$13
    (i32.eqz
     (get_local $4)
    )
   )
   (i32.store offset=8
    (get_local $4)
    (get_local $3)
   )
  )
  (i32.store offset=8
   (get_local $2)
   (i32.load offset=8
    (get_local $3)
   )
  )
  (i32.store
   (select
    (tee_local $4
     (i32.load offset=8
      (get_local $3)
     )
    )
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
    (i32.eq
     (i32.load
      (get_local $4)
     )
     (get_local $3)
    )
   )
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $3)
   (get_local $2)
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 4)
   )
   (get_local $3)
  )
 )
 (func $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE6modifyIZN3pet12battleattackENS_4nameES6_yyhE4$_11EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (set_local $12
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=44
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (set_local $3
   (i64.load
    (get_local $1)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $8
      (i32.load
       (get_local $2)
      )
     )
     (get_local $1)
    )
   )
   (call $_ZNSt3__16vectorIN5types11st_pet_statENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
    (i32.load offset=32
     (get_local $8)
    )
    (i32.load
     (i32.add
      (get_local $8)
      (i32.const 36)
     )
    )
   )
   (br_if $label$0
    (i32.eq
     (tee_local $2
      (i32.load
       (get_local $2)
      )
     )
     (get_local $1)
    )
   )
   (call $_ZNSt3__16vectorIN5types9st_commitENS_9allocatorIS2_EEE6assignIPS2_EENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS2_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
    (i32.load offset=20
     (get_local $2)
    )
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 24)
     )
    )
   )
  )
  (i64.store32 offset=16
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 416)
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 20)
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.div_s
     (tee_local $9
      (i32.sub
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 24)
         )
        )
       )
       (tee_local $7
        (i32.load offset=20
         (get_local $1)
        )
       )
      )
     )
     (i32.const 80)
    )
   )
  )
  (set_local $2
   (i32.const 89)
  )
  (loop $label$1
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $6)
     )
    )
    (set_local $2
     (i32.add
      (i32.mul
       (i32.div_u
        (i32.add
         (get_local $9)
         (i32.const -80)
        )
        (i32.const 80)
       )
       (i32.const 72)
      )
      (get_local $2)
     )
    )
    (br $label$2)
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -72)
    )
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $9
      (i32.sub
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 36)
         )
        )
       )
       (tee_local $7
        (i32.load
         (get_local $8)
        )
       )
      )
     )
     (i32.const 5)
    )
   )
  )
  (loop $label$4
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (set_local $2
    (i32.add
     (i32.add
      (i32.mul
       (i32.shr_u
        (i32.add
         (get_local $9)
         (i32.const -32)
        )
        (i32.const 5)
       )
       (i32.const 18)
      )
      (get_local $2)
     )
     (i32.const 18)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $11
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$6)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $11
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $12)
   (get_local $11)
  )
  (i32.store
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=8
   (get_local $12)
   (i32.add
    (get_local $11)
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $12)
   (get_local $12)
  )
  (i32.store offset=36
   (get_local $12)
   (get_local $4)
  )
  (i32.store offset=40
   (get_local $12)
   (get_local $5)
  )
  (i32.store offset=44
   (get_local $12)
   (get_local $8)
  )
  (i32.store offset=24
   (get_local $12)
   (get_local $1)
  )
  (i32.store offset=28
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=32
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio4nameERKhRKmSC_RKNSt3__16vectorIN5types9st_commitENSD_9allocatorISG_EEEERKNSE_INSF_11st_pet_statENSH_ISM_EEEEEEEZNS5_lsINS5_10datastreamIPcEENSF_9st_battleELPv0EEERT_SZ_RKT0_EUlRKSY_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSZ_OS10_NSD_16integer_sequenceIjJXspT1_EEEENSD_17integral_constantIbLb0EEE
   (i32.add
    (get_local $12)
    (i32.const 24)
   )
   (i32.add
    (get_local $12)
    (i32.const 16)
   )
  )
  (call $db_update_i64
   (i32.load offset=48
    (get_local $1)
   )
   (i64.const 0)
   (get_local $11)
   (get_local $2)
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $11)
   )
  )
  (block $label$9
   (br_if $label$9
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5eosio15dispatch_inlineIJNS_4nameES1_EEEvyyNSt3__16vectorINS_16permission_levelENS2_9allocatorIS4_EEEENS2_5tupleIJDpT_EEE (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=16
   (get_local $9)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $8
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $5
       (i32.shr_s
        (tee_local $4
         (i32.sub
          (i32.load offset=4
           (get_local $2)
          )
          (i32.load
           (get_local $2)
          )
         )
        )
        (i32.const 4)
       )
      )
     )
    )
    (br_if $label$0
     (i32.ge_u
      (get_local $5)
      (i32.const 268435456)
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 16)
     )
     (tee_local $6
      (i32.add
       (tee_local $8
        (call $_Znwj
         (get_local $4)
        )
       )
       (i32.shl
        (get_local $5)
        (i32.const 4)
       )
      )
     )
    )
    (i32.store offset=8
     (get_local $9)
     (get_local $8)
    )
    (i32.store offset=12
     (get_local $9)
     (get_local $8)
    )
    (block $label$2
     (br_if $label$2
      (i32.lt_s
       (tee_local $2
        (i32.sub
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 4)
          )
         )
         (tee_local $7
          (i32.load
           (get_local $2)
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $8)
       (get_local $7)
       (get_local $2)
      )
     )
     (i32.store offset=12
      (get_local $9)
      (tee_local $7
       (i32.add
        (get_local $8)
        (get_local $2)
       )
      )
     )
     (br $label$1)
    )
    (set_local $7
     (get_local $8)
    )
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 44)
    )
    (get_local $7)
   )
   (i64.store offset=32
    (get_local $9)
    (get_local $1)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i32.const 8)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 48)
    )
    (get_local $6)
   )
   (i64.store offset=24
    (get_local $9)
    (get_local $0)
   )
   (i32.store offset=40
    (get_local $9)
    (get_local $8)
   )
   (i64.store offset=8
    (get_local $9)
    (i64.const 0)
   )
   (i32.store offset=52
    (get_local $9)
    (i32.const 0)
   )
   (i32.store
    (tee_local $8
     (i32.add
      (get_local $9)
      (i32.const 56)
     )
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 60)
    )
    (i32.const 0)
   )
   (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
    (i32.add
     (get_local $9)
     (i32.const 52)
    )
    (i32.const 16)
   )
   (call $eosio_assert
    (i32.gt_s
     (tee_local $2
      (i32.sub
       (i32.load
        (get_local $8)
       )
       (tee_local $8
        (i32.load offset=52
         (get_local $9)
        )
       )
      )
     )
     (i32.const 7)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (get_local $8)
     (get_local $3)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.add
      (get_local $2)
      (i32.const -8)
     )
     (i32.const 7)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (i32.add
     (get_local $9)
     (i32.const 64)
    )
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
   )
   (call $send_inline
    (tee_local $8
     (i32.load offset=64
      (get_local $9)
     )
    )
    (i32.sub
     (i32.load offset=68
      (get_local $9)
     )
     (get_local $8)
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (tee_local $8
       (i32.load offset=64
        (get_local $9)
       )
      )
     )
    )
    (i32.store offset=68
     (get_local $9)
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (tee_local $8
       (i32.load offset=52
        (get_local $9)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 56)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (tee_local $8
       (i32.load offset=40
        (get_local $9)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 44)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $8
       (i32.load offset=8
        (get_local $9)
       )
      )
     )
    )
    (i32.store offset=12
     (get_local $9)
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $9)
     (i32.const 80)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (unreachable)
 )
 (func $_ZNSt3__16__treeINS_12__value_typeIN5eosio4nameEhEENS_19__map_value_compareIS3_S4_NS_4lessIS3_EELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE (param $0 i32) (param $1 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZNSt3__16__treeINS_12__value_typeIN5eosio4nameEhEENS_19__map_value_compareIS3_S4_NS_4lessIS3_EELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE
    (get_local $0)
    (i32.load
     (get_local $1)
    )
   )
   (call $_ZNSt3__16__treeINS_12__value_typeIN5eosio4nameEhEENS_19__map_value_compareIS3_S4_NS_4lessIS3_EELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE
    (get_local $0)
    (i32.load offset=4
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
  )
 )
 (func $_ZN3pet12battlefinishEN5eosio4nameES1_ (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $18
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $18)
    (i32.const 152)
   )
   (i32.const 0)
  )
  (i64.store offset=136
   (get_local $18)
   (i64.const -1)
  )
  (i64.store offset=144
   (get_local $18)
   (i64.const 0)
  )
  (i64.store offset=120
   (get_local $18)
   (tee_local $7
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=128
   (get_local $18)
   (get_local $7)
  )
  (set_local $14
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $16
      (call $db_find_i64
       (get_local $7)
       (get_local $7)
       (i64.const 4157834741199929344)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (tee_local $14
       (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $18)
         (i32.const 120)
        )
        (get_local $16)
       )
      )
     )
     (i32.add
      (get_local $18)
      (i32.const 120)
     )
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $3
    (i32.ne
     (get_local $14)
     (i32.const 0)
    )
   )
   (i32.const 1104)
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $15
      (i32.load offset=32
       (tee_local $4
        (call $_ZN5types9st_battleC2ERKS0_
         (i32.add
          (get_local $18)
          (i32.const 72)
         )
         (get_local $14)
        )
       )
      )
     )
     (tee_local $5
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 36)
       )
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $0)
     (i32.const 128)
    )
   )
   (set_local $11
    (i32.add
     (get_local $0)
     (i32.const 152)
    )
   )
   (set_local $12
    (i32.add
     (get_local $0)
     (i32.const 156)
    )
   )
   (set_local $13
    (i32.add
     (get_local $0)
     (i32.const 136)
    )
   )
   (loop $label$2
    (set_local $7
     (i64.load
      (get_local $15)
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $17
        (i32.load
         (get_local $12)
        )
       )
       (tee_local $8
        (i32.load
         (get_local $11)
        )
       )
      )
     )
     (set_local $16
      (i32.add
       (get_local $17)
       (i32.const -24)
      )
     )
     (set_local $9
      (i32.sub
       (i32.const 0)
       (get_local $8)
      )
     )
     (loop $label$4
      (br_if $label$3
       (i64.eq
        (i64.load
         (i32.load
          (get_local $16)
         )
        )
        (get_local $7)
       )
      )
      (set_local $17
       (get_local $16)
      )
      (set_local $16
       (tee_local $10
        (i32.add
         (get_local $16)
         (i32.const -24)
        )
       )
      )
      (br_if $label$4
       (i32.ne
        (i32.add
         (get_local $10)
         (get_local $9)
        )
        (i32.const -24)
       )
      )
     )
    )
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eq
        (get_local $17)
        (get_local $8)
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=8
         (tee_local $16
          (i32.load
           (i32.add
            (get_local $17)
            (i32.const -24)
           )
          )
         )
        )
        (get_local $6)
       )
       (i32.const 16)
      )
      (br $label$5)
     )
     (set_local $16
      (i32.const 0)
     )
     (br_if $label$5
      (i32.lt_s
       (tee_local $10
        (call $db_find_i64
         (i64.load
          (get_local $6)
         )
         (i64.load
          (get_local $13)
         )
         (i64.const -6146593681529088640)
         (get_local $7)
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=8
        (tee_local $16
         (call $_ZNK5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE31load_object_by_primary_iteratorEl
          (get_local $6)
          (get_local $10)
         )
        )
       )
       (get_local $6)
      )
      (i32.const 16)
     )
    )
    (call $eosio_assert
     (tee_local $10
      (i32.ne
       (get_local $16)
       (i32.const 0)
      )
     )
     (i32.const 1968)
    )
    (call $eosio_assert
     (get_local $10)
     (i32.const 560)
    )
    (call $eosio_assert
     (get_local $10)
     (i32.const 608)
    )
    (block $label$7
     (br_if $label$7
      (i32.lt_s
       (tee_local $10
        (call $db_next_i64
         (i32.load offset=12
          (get_local $16)
         )
         (get_local $18)
        )
       )
       (i32.const 0)
      )
     )
     (drop
      (call $_ZNK5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE31load_object_by_primary_iteratorEl
       (get_local $6)
       (get_local $10)
      )
     )
    )
    (call $_ZN5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE5eraseERKS2_
     (get_local $6)
     (get_local $16)
    )
    (br_if $label$2
     (i32.ne
      (tee_local $15
       (i32.add
        (get_local $15)
        (i32.const 32)
       )
      )
      (get_local $5)
     )
    )
   )
  )
  (call $eosio_assert
   (get_local $3)
   (i32.const 560)
  )
  (call $eosio_assert
   (get_local $3)
   (i32.const 608)
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_s
     (tee_local $16
      (call $db_next_i64
       (i32.load offset=48
        (get_local $14)
       )
       (get_local $18)
      )
     )
     (i32.const 0)
    )
   )
   (drop
    (call $_ZNK5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE31load_object_by_primary_iteratorEl
     (i32.add
      (get_local $18)
      (i32.const 120)
     )
     (get_local $16)
    )
   )
  )
  (call $_ZN5eosio11multi_indexILy4157834741199929344EN5types9st_battleEJEE5eraseERKS2_
   (i32.add
    (get_local $18)
    (i32.const 120)
   )
   (get_local $14)
  )
  (call $_ZN3pet15_get_pet_configEv
   (get_local $18)
   (get_local $0)
  )
  (i32.store16 offset=60
   (get_local $18)
   (i32.add
    (i32.load16_u offset=60
     (get_local $18)
    )
    (i32.const -1)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (get_local $18)
   (i64.load
    (get_local $0)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (tee_local $16
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 32)
       )
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 36)
    )
    (get_local $16)
   )
   (call $_ZdlPv
    (get_local $16)
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (tee_local $16
      (i32.load offset=20
       (get_local $4)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
    (get_local $16)
   )
   (call $_ZdlPv
    (get_local $16)
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (tee_local $9
      (i32.load offset=144
       (get_local $18)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.eq
       (tee_local $10
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $18)
           (i32.const 148)
          )
         )
        )
       )
       (get_local $9)
      )
     )
     (loop $label$14
      (set_local $16
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $10)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $10)
       (i32.const 0)
      )
      (block $label$15
       (br_if $label$15
        (i32.eqz
         (get_local $16)
        )
       )
       (block $label$16
        (br_if $label$16
         (i32.eqz
          (tee_local $17
           (i32.load offset=32
            (get_local $16)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $16)
          (i32.const 36)
         )
         (get_local $17)
        )
        (call $_ZdlPv
         (get_local $17)
        )
       )
       (block $label$17
        (br_if $label$17
         (i32.eqz
          (tee_local $17
           (i32.load offset=20
            (get_local $16)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $16)
          (i32.const 24)
         )
         (get_local $17)
        )
        (call $_ZdlPv
         (get_local $17)
        )
       )
       (call $_ZdlPv
        (get_local $16)
       )
      )
      (br_if $label$14
       (i32.ne
        (get_local $9)
        (get_local $10)
       )
      )
     )
     (set_local $16
      (i32.load
       (i32.add
        (get_local $18)
        (i32.const 144)
       )
      )
     )
     (br $label$12)
    )
    (set_local $16
     (get_local $9)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $9)
   )
   (call $_ZdlPv
    (get_local $16)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $18)
    (i32.const 160)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300150392180462976EN5types13st_pet_inbattEJEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $eosio_assert
   (i32.eq
    (i32.load offset=8
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 640)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 688)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $8
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (set_local $8
     (tee_local $4
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 752)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $4
       (i32.load
        (get_local $5)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (loop $label$4
     (set_local $6
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $4
      (i32.load
       (get_local $7)
      )
     )
     (i32.store
      (get_local $7)
      (get_local $6)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $4)
       )
      )
      (call $_ZdlPv
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (set_local $7
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$6
    (set_local $4
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (get_local $4)
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$6
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=12
    (get_local $1)
   )
  )
 )
 (func $_ZN3pet9createpetEN5eosio4nameENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 224)
    )
   )
  )
  (i64.store offset=104
   (get_local $11)
   (get_local $1)
  )
  (call $require_auth
   (get_local $1)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.and
      (tee_local $9
       (i32.load8_u
        (get_local $2)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $9
     (i32.shr_u
      (get_local $9)
      (i32.const 1)
     )
    )
    (br $label$0)
   )
   (set_local $9
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $9)
    (i32.const 0)
   )
   (i32.const 2000)
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.and
      (tee_local $9
       (i32.load8_u
        (get_local $2)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $9
     (i32.shr_u
      (get_local $9)
      (i32.const 1)
     )
    )
    (br $label$2)
   )
   (set_local $9
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (i32.lt_u
    (get_local $9)
    (i32.const 21)
   )
   (i32.const 2048)
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.and
      (tee_local $9
       (i32.load8_u
        (get_local $2)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $7
     (i32.shr_u
      (get_local $9)
      (i32.const 1)
     )
    )
    (br $label$4)
   )
   (set_local $7
    (i32.load offset=4
     (get_local $2)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $11)
     (i32.const 88)
    )
    (get_local $2)
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (select
       (i32.load offset=92
        (get_local $11)
       )
       (i32.shr_u
        (tee_local $9
         (i32.load8_u offset=88
          (get_local $11)
         )
        )
        (i32.const 1)
       )
       (tee_local $9
        (i32.and
         (get_local $9)
         (i32.const 1)
        )
       )
      )
     )
    )
    (set_local $8
     (i32.eqz
      (get_local $9)
     )
    )
    (set_local $3
     (i32.or
      (i32.add
       (get_local $11)
       (i32.const 88)
      )
      (i32.const 1)
     )
    )
    (set_local $4
     (i32.add
      (get_local $11)
      (i32.const 96)
     )
    )
    (set_local $9
     (i32.const 0)
    )
    (set_local $10
     (i32.const 0)
    )
    (loop $label$8
     (set_local $10
      (i32.add
       (i32.ne
        (call $isspace
         (i32.load8_s
          (i32.add
           (select
            (get_local $3)
            (i32.load
             (get_local $4)
            )
            (i32.and
             (get_local $8)
             (i32.const 1)
            )
           )
           (get_local $9)
          )
         )
        )
        (i32.const 0)
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.eqz
       (tee_local $6
        (i32.and
         (tee_local $5
          (i32.load8_u offset=88
           (get_local $11)
          )
         )
         (i32.const 1)
        )
       )
      )
     )
     (br_if $label$8
      (i32.lt_u
       (tee_local $9
        (i32.add
         (get_local $9)
         (i32.const 1)
        )
       )
       (select
        (i32.load offset=92
         (get_local $11)
        )
        (i32.shr_u
         (get_local $5)
         (i32.const 1)
        )
        (get_local $6)
       )
      )
     )
     (br $label$6)
    )
   )
   (set_local $10
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $7)
    (get_local $10)
   )
   (i32.const 2080)
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (i32.and
      (i32.load8_u offset=88
       (get_local $11)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $11)
      (i32.const 96)
     )
    )
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $11)
    (i32.const 16)
   )
   (get_local $0)
  )
  (block $label$10
   (block $label$11
    (block $label$12
     (block $label$13
      (block $label$14
       (block $label$15
        (br_if $label$15
         (i32.eqz
          (i32.load offset=64
           (get_local $11)
          )
         )
        )
        (i32.store offset=8
         (get_local $11)
         (tee_local $3
          (i32.add
           (get_local $0)
           (i32.const 88)
          )
         )
        )
        (i64.store offset=144
         (get_local $11)
         (i64.load offset=104
          (get_local $11)
         )
        )
        (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE5indexILy4587419431193280512ES7_Ly0ELb0EE11lower_boundERKy
         (i32.add
          (get_local $11)
          (i32.const 152)
         )
         (i32.add
          (get_local $11)
          (i32.const 8)
         )
         (i32.add
          (get_local $11)
          (i32.const 144)
         )
        )
        (block $label$16
         (br_if $label$16
          (i32.eqz
           (tee_local $9
            (i32.load offset=156
             (get_local $11)
            )
           )
          )
         )
         (br_if $label$16
          (i64.ne
           (i64.load offset=144
            (get_local $11)
           )
           (i64.load offset=8
            (get_local $9)
           )
          )
         )
         (i64.store offset=120
          (get_local $11)
          (tee_local $1
           (i64.load offset=152
            (get_local $11)
           )
          )
         )
         (br_if $label$14
          (i32.eqz
           (tee_local $9
            (i32.wrap/i64
             (i64.shr_u
              (get_local $1)
              (i64.const 32)
             )
            )
           )
          )
         )
         (set_local $5
          (i32.add
           (i32.add
            (get_local $11)
            (i32.const 152)
           )
           (i32.const 16)
          )
         )
         (set_local $10
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (tee_local $8
            (i32.add
             (get_local $11)
             (i32.const 180)
            )
           )
           (i32.const 24)
          )
         )
         (set_local $7
          (i32.add
           (get_local $11)
           (i32.const 184)
          )
         )
         (loop $label$17
          (i64.store
           (tee_local $6
            (i32.add
             (i32.add
              (get_local $11)
              (i32.const 152)
             )
             (i32.const 8)
            )
           )
           (i64.load
            (i32.add
             (get_local $9)
             (i32.const 8)
            )
           )
          )
          (i64.store offset=152
           (get_local $11)
           (i64.load
            (get_local $9)
           )
          )
          (drop
           (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
            (get_local $5)
            (i32.add
             (get_local $9)
             (i32.const 16)
            )
           )
          )
          (i64.store align=4
           (get_local $4)
           (i64.load align=4
            (i32.add
             (get_local $9)
             (i32.const 52)
            )
           )
          )
          (i64.store align=4
           (i32.add
            (get_local $8)
            (i32.const 16)
           )
           (i64.load align=4
            (i32.add
             (get_local $9)
             (i32.const 44)
            )
           )
          )
          (i64.store align=4
           (i32.add
            (get_local $8)
            (i32.const 8)
           )
           (i64.load align=4
            (i32.add
             (get_local $9)
             (i32.const 36)
            )
           )
          )
          (i64.store align=4
           (get_local $8)
           (i64.load offset=28 align=4
            (get_local $9)
           )
          )
          (br_if $label$13
           (i64.ne
            (i64.load
             (get_local $6)
            )
            (i64.load offset=104
             (get_local $11)
            )
           )
          )
          (set_local $6
           (i32.gt_u
            (tee_local $9
             (i32.load
              (get_local $7)
             )
            )
            (get_local $10)
           )
          )
          (block $label$18
           (br_if $label$18
            (i32.eqz
             (i32.and
              (i32.load8_u
               (get_local $5)
              )
              (i32.const 1)
             )
            )
           )
           (call $_ZdlPv
            (i32.load
             (i32.add
              (i32.add
               (get_local $11)
               (i32.const 152)
              )
              (i32.const 24)
             )
            )
           )
          )
          (set_local $10
           (select
            (get_local $9)
            (get_local $10)
            (get_local $6)
           )
          )
          (drop
           (call $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE5indexILy4587419431193280512ES7_Ly0ELb0EE14const_iteratorppEv
            (i32.add
             (get_local $11)
             (i32.const 120)
            )
           )
          )
          (br_if $label$17
           (tee_local $9
            (i32.load offset=124
             (get_local $11)
            )
           )
          )
          (br $label$12)
         )
        )
        (set_local $10
         (i32.const 0)
        )
        (i32.store offset=124
         (get_local $11)
         (i32.const 0)
        )
        (i32.store offset=120
         (get_local $11)
         (i32.add
          (get_local $11)
          (i32.const 8)
         )
        )
        (br $label$11)
       )
       (set_local $3
        (i32.add
         (get_local $0)
         (i32.const 88)
        )
       )
       (br $label$10)
      )
      (set_local $10
       (i32.const 0)
      )
      (br $label$11)
     )
     (br_if $label$12
      (i32.eqz
       (i32.and
        (i32.load8_u
         (i32.add
          (get_local $11)
          (i32.const 168)
         )
        )
        (i32.const 1)
       )
      )
     )
     (call $_ZdlPv
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 176)
       )
      )
     )
    )
    (block $label$19
     (br_if $label$19
      (i32.eqz
       (get_local $10)
      )
     )
     (call $prints
      (i32.const 2128)
     )
     (call $printui
      (i64.extend_u/i32
       (get_local $10)
      )
     )
     (br $label$11)
    )
    (set_local $10
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.gt_u
     (i32.sub
      (i32.wrap/i64
       (i64.div_u
        (call $current_time)
        (i64.const 1000000)
       )
      )
      (get_local $10)
     )
     (i32.load
      (i32.add
       (get_local $11)
       (i32.const 64)
      )
     )
    )
    (i32.const 2160)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $11)
    (i32.const 152)
   )
   (get_local $0)
  )
  (i64.store offset=152
   (get_local $11)
   (i64.add
    (i64.load offset=152
     (get_local $11)
    )
    (i64.const 1)
   )
  )
  (call $_ZN5eosio9singletonILy12300045597471178752EN3pet14st_pet_config2EE3setERKS2_y
   (i32.add
    (get_local $0)
    (i32.const 208)
   )
   (i32.add
    (get_local $11)
    (i32.const 152)
   )
   (i64.load
    (get_local $0)
   )
  )
  (i64.store offset=8
   (get_local $11)
   (i64.load offset=152
    (get_local $11)
   )
  )
  (set_local $1
   (i64.load offset=104
    (get_local $11)
   )
  )
  (i32.store offset=156
   (get_local $11)
   (get_local $2)
  )
  (i32.store offset=152
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 8)
   )
  )
  (i32.store offset=160
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 104)
   )
  )
  (i32.store offset=164
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 16)
   )
  )
  (i64.store offset=144
   (get_local $11)
   (get_local $1)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=88
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 128)
  )
  (i32.store offset=120
   (get_local $11)
   (get_local $3)
  )
  (i32.store offset=124
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 152)
   )
  )
  (i32.store offset=128
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 144)
   )
  )
  (i64.store offset=8
   (tee_local $9
    (call $_Znwj
     (i32.const 72)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=16 align=4
   (get_local $9)
   (i64.const 0)
  )
  (i32.store offset=24
   (get_local $9)
   (i32.const 0)
  )
  (i32.store offset=36
   (get_local $9)
   (i32.const 0)
  )
  (i32.store offset=48
   (get_local $9)
   (i32.const 0)
  )
  (i32.store offset=60
   (get_local $9)
   (get_local $3)
  )
  (call $_ZZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE7emplaceIZN3pet9createpetENS_4nameENSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEE4$_12EENS9_14const_iteratorEyOT_ENKUlRSM_E_clINS9_4itemEEEDaSO_
   (i32.add
    (get_local $11)
    (i32.const 120)
   )
   (get_local $9)
  )
  (i32.store offset=136
   (get_local $11)
   (get_local $9)
  )
  (i64.store offset=120
   (get_local $11)
   (tee_local $1
    (i64.load
     (get_local $9)
    )
   )
  )
  (i32.store offset=116
   (get_local $11)
   (tee_local $8
    (i32.load offset=64
     (get_local $9)
    )
   )
  )
  (block $label$20
   (block $label$21
    (br_if $label$21
     (i32.ge_u
      (tee_local $10
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $0)
          (i32.const 116)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 120)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $10)
     (get_local $1)
    )
    (i32.store offset=16
     (get_local $10)
     (get_local $8)
    )
    (i32.store offset=136
     (get_local $11)
     (i32.const 0)
    )
    (i32.store
     (get_local $10)
     (get_local $9)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $10)
      (i32.const 24)
     )
    )
    (br $label$20)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS1_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_17get_pets_by_ownerEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $0)
     (i32.const 112)
    )
    (i32.add
     (get_local $11)
     (i32.const 136)
    )
    (i32.add
     (get_local $11)
     (i32.const 120)
    )
    (i32.add
     (get_local $11)
     (i32.const 116)
    )
   )
  )
  (set_local $9
   (i32.load offset=136
    (get_local $11)
   )
  )
  (i32.store offset=136
   (get_local $11)
   (i32.const 0)
  )
  (block $label$22
   (br_if $label$22
    (i32.eqz
     (get_local $9)
    )
   )
   (block $label$23
    (br_if $label$23
     (i32.eqz
      (i32.and
       (i32.load8_u offset=16
        (get_local $9)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $9)
       (i32.const 24)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $9)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 224)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE5indexILy4587419431193280512ES7_Ly0ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx64_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const -6146428328942239744)
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=8
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=60
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 16)
     )
     (br $label$3)
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$3
     (i32.lt_s
      (tee_local $8
       (call $db_find_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -6146428328942239744)
        (get_local $5)
       )
      )
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (get_local $8)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 16)
    )
   )
   (i32.store offset=68
    (get_local $2)
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE5indexILy4587419431193280512ES7_Ly0ELb0EE14const_iteratorppEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 608)
  )
  (block $label$0
   (br_if $label$0
    (i32.ne
     (tee_local $6
      (i32.load offset=68
       (tee_local $8
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const -1)
    )
   )
   (set_local $6
    (call $db_idx64_find_primary
     (i64.load
      (tee_local $6
       (i32.load
        (i32.load
         (get_local $0)
        )
       )
      )
     )
     (i64.load offset=8
      (get_local $6)
     )
     (i64.const -6146428328942239744)
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i64.load
      (get_local $8)
     )
    )
   )
   (i32.store offset=68
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
    (get_local $6)
   )
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $1
      (call $db_idx64_next
       (get_local $6)
       (i32.add
        (get_local $9)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $3
    (i64.load offset=8
     (get_local $9)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.eq
      (tee_local $8
       (i32.load
        (i32.add
         (tee_local $2
          (i32.load
           (i32.load
            (get_local $0)
           )
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $4
       (i32.load offset=24
        (get_local $2)
       )
      )
     )
    )
    (set_local $7
     (i32.add
      (get_local $8)
      (i32.const -24)
     )
    )
    (set_local $5
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (loop $label$3
     (br_if $label$2
      (i64.eq
       (i64.load
        (i32.load
         (get_local $7)
        )
       )
       (get_local $3)
      )
     )
     (set_local $8
      (get_local $7)
     )
     (set_local $7
      (tee_local $6
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
     (br_if $label$3
      (i32.ne
       (i32.add
        (get_local $6)
        (get_local $5)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eq
       (get_local $8)
       (get_local $4)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=60
        (tee_local $7
         (i32.load
          (i32.add
           (get_local $8)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $2)
      )
      (i32.const 16)
     )
     (br $label$4)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $7
        (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $2)
         (call $db_find_i64
          (i64.load
           (get_local $2)
          )
          (i64.load offset=8
           (get_local $2)
          )
          (i64.const -6146428328942239744)
          (get_local $3)
         )
        )
       )
      )
      (get_local $2)
     )
     (i32.const 16)
    )
   )
   (i32.store offset=68
    (get_local $7)
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE7emplaceIZN3pet9createpetENS_4nameENSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEE4$_12EENS9_14const_iteratorEyOT_ENKUlRSM_E_clINS9_4itemEEEDaSO_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $8
   (i32.load offset=4
    (get_local $0)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (tee_local $11
      (get_local $12)
     )
     (i32.const 48)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $11)
   (i64.const 0)
  )
  (i32.store8 offset=52
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=56
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=60
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=64
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=68
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=72
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=76
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=80
   (get_local $11)
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.load
    (i32.load
     (get_local $8)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $5
     (i32.add
      (i32.add
       (get_local $11)
       (i32.const 24)
      )
      (i32.const 16)
     )
    )
    (i32.load offset=4
     (get_local $8)
    )
   )
  )
  (i64.store offset=32
   (get_local $11)
   (i64.load
    (i32.load offset=8
     (get_local $8)
    )
   )
  )
  (set_local $9
   (call $current_time)
  )
  (i32.store offset=72
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=64
   (get_local $11)
   (tee_local $10
    (i32.wrap/i64
     (i64.div_u
      (get_local $9)
      (i64.const 1000000)
     )
    )
   )
  )
  (i32.store offset=56
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=76
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=68
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=80
   (get_local $11)
   (get_local $10)
  )
  (i64.store8 offset=52
   (get_local $11)
   (i64.rem_u
    (i64.add
     (i64.add
      (i64.add
       (call $_ZN5utils8hash_strERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
        (i32.load offset=4
         (get_local $8)
        )
       )
       (i64.load32_u offset=56
        (get_local $11)
       )
      )
      (i64.load offset=24
       (get_local $11)
      )
     )
     (i64.load
      (i32.load offset=8
       (get_local $8)
      )
     )
    )
    (i64.load16_u offset=64
     (i32.load offset=12
      (get_local $8)
     )
    )
   )
  )
  (i64.store align=4
   (i32.add
    (get_local $1)
    (i32.const 4)
   )
   (i64.load offset=28 align=4
    (get_local $11)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 24)
     )
     (i32.const 12)
    )
   )
  )
  (i32.store
   (get_local $1)
   (i32.load offset=24
    (get_local $11)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $3
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
    (get_local $5)
   )
  )
  (i64.store align=4
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
   (i64.load offset=76 align=4
    (get_local $11)
   )
  )
  (i64.store align=4
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
   (i64.load offset=68 align=4
    (get_local $11)
   )
  )
  (i64.store align=4
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
   (i64.load offset=60 align=4
    (get_local $11)
   )
  )
  (i64.store offset=28 align=4
   (get_local $1)
   (i64.load offset=52 align=4
    (get_local $11)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (i32.load8_u offset=40
       (get_local $11)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (get_local $4)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $10
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $8
        (i32.load8_u
         (get_local $3)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $8)
       (i32.const 1)
      )
     )
    )
    (i32.const 45)
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (get_local $10)
   )
  )
  (loop $label$1
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.lt_u
      (get_local $8)
      (i32.const 513)
     )
    )
    (set_local $10
     (call $malloc
      (get_local $8)
     )
    )
    (br $label$2)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $10
     (i32.sub
      (get_local $12)
      (i32.and
       (i32.add
        (get_local $8)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=12
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=8
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=16
   (get_local $11)
   (i32.add
    (get_local $10)
    (get_local $8)
   )
  )
  (i32.store offset=88
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 8)
   )
  )
  (i32.store offset=28
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=24
   (get_local $11)
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $11)
   (get_local $3)
  )
  (i32.store offset=36
   (get_local $11)
   (get_local $5)
  )
  (i32.store offset=40
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=44
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
  )
  (i32.store offset=48
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=52
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (i32.store offset=56
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (i32.store offset=60
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
  )
  (i32.store offset=64
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio4nameERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKhRKmSN_SN_SN_SN_SN_SN_EEEZNS7_lsINS7_10datastreamIPcEEN5types7st_petsELPv0EEERT_SX_RKT0_EUlRKSW_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSX_OSY_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE
   (i32.add
    (get_local $11)
    (i32.const 24)
   )
   (i32.add
    (get_local $11)
    (i32.const 88)
   )
  )
  (i32.store offset=64
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -6146428328942239744)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $9
     (i64.load
      (get_local $1)
     )
    )
    (get_local $10)
    (get_local $8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $8)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $10)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $9)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $9)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $9)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $9
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (set_local $6
   (i64.load
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $7
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=24
   (get_local $11)
   (i64.load offset=8
    (get_local $1)
   )
  )
  (i32.store offset=68
   (get_local $1)
   (call $db_idx64_store
    (get_local $9)
    (i64.const -6146428328942239744)
    (get_local $6)
    (get_local $7)
    (i32.add
     (get_local $11)
     (i32.const 24)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 96)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio4nameERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKhRKmSN_SN_SN_SN_SN_SN_EEEZNS7_lsINS7_10datastreamIPcEEN5types7st_petsELPv0EEERT_SX_RKT0_EUlRKSW_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSX_OSY_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 0)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $2
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 3)
   )
   (i32.const 288)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $2)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (tee_local $5
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (select
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $5
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $2
        (i32.and
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $1)
    )
   )
   (call $eosio_assert
    (i32.ge_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $6)
     )
     (get_local $5)
    )
    (i32.const 288)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (select
      (get_local $3)
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (get_local $2)
     )
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (i32.add
     (i32.load
      (get_local $6)
     )
     (get_local $5)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN3pet9updatepetEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 2208)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 116)
       )
      )
     )
     (tee_local $2
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $5)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $6)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $5
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $6
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 88)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 96)
        )
       )
       (i64.const -6146428328942239744)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=60
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $4)
        (get_local $6)
       )
      )
     )
     (get_local $4)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $6
    (i32.ne
     (get_local $5)
     (i32.const 0)
    )
   )
   (i32.const 1456)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=16
   (get_local $7)
   (i64.load
    (get_local $5)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (i32.const 16)
    )
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.const 52)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 52)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.const 44)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 44)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.const 36)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 36)
    )
   )
  )
  (i64.store offset=44 align=4
   (get_local $7)
   (i64.load offset=28 align=4
    (get_local $5)
   )
  )
  (call $_ZN3pet7_updateERN5types7st_petsE
   (get_local $0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (i32.store offset=8
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 80)
  )
  (call $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet9updatepetEyE4$_13EEvRKS2_yOT_
   (get_local $4)
   (get_local $5)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $7)
      (i32.const 40)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet7_updateERN5types7st_petsE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $eosio_assert
   (i32.eqz
    (i32.load offset=36
     (get_local $1)
    )
   )
   (i32.const 2224)
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
   (get_local $0)
  )
  (set_local $6
   (call $current_time)
  )
  (set_local $0
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (tee_local $5
      (i32.div_u
       (i32.mul
        (tee_local $4
         (i32.load8_u offset=44
          (get_local $7)
         )
        )
        (tee_local $3
         (i32.sub
          (tee_local $2
           (i32.wrap/i64
            (i64.div_u
             (get_local $6)
             (i64.const 1000000)
            )
           )
          )
          (i32.load offset=40
           (get_local $1)
          )
         )
        )
       )
       (i32.load offset=36
        (get_local $7)
       )
      )
     )
     (get_local $4)
    )
   )
   (set_local $0
    (i32.div_u
     (i32.sub
      (get_local $5)
      (get_local $4)
     )
     (i32.load8_u offset=45
      (get_local $7)
     )
    )
   )
  )
  (call $prints
   (i32.const 2256)
  )
  (call $printui
   (i64.extend_u/i32
    (get_local $5)
   )
  )
  (call $prints
   (i32.const 2288)
  )
  (call $printui
   (i64.extend_u/i32
    (get_local $3)
   )
  )
  (set_local $4
   (i32.load8_u offset=32
    (get_local $7)
   )
  )
  (call $prints
   (i32.const 2320)
  )
  (call $printi
   (i64.extend_s/i32
    (tee_local $4
     (i32.sub
      (get_local $4)
      (get_local $0)
     )
    )
   )
  )
  (call $prints
   (i32.const 2336)
  )
  (call $printui
   (i64.extend_u/i32
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.gt_s
     (get_local $4)
     (i32.const 0)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 36)
    )
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet9updatepetEyE4$_13EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (i32.store offset=36
   (get_local $1)
   (i32.load
    (i32.add
     (i32.load
      (get_local $2)
     )
     (i32.const 36)
    )
   )
  )
  (i64.store offset=16
   (tee_local $8
    (get_local $7)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 416)
  )
  (set_local $2
   (i32.add
    (tee_local $5
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 45)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (get_local $5)
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $7
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $7
     (i32.sub
      (get_local $7)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $8)
   (get_local $7)
  )
  (i32.store
   (get_local $8)
   (get_local $7)
  )
  (i32.store offset=8
   (get_local $8)
   (i32.add
    (get_local $7)
    (get_local $2)
   )
  )
  (i32.store offset=24
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=40
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=52
   (get_local $8)
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=36
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=44
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=48
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=56
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=60
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (i32.store offset=64
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (i32.store offset=68
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio4nameERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKhRKmSN_SN_SN_SN_SN_SN_EEEZNS7_lsINS7_10datastreamIPcEEN5types7st_petsELPv0EEERT_SX_RKT0_EUlRKSW_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSX_OSY_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
   (i32.add
    (get_local $8)
    (i32.const 24)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $7)
   (get_local $2)
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=32
   (get_local $8)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.add
       (get_local $8)
       (i32.const 32)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.gt_s
      (tee_local $2
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -6146428328942239744)
       (i32.add
        (get_local $8)
        (i32.const 24)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet10destroypetEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (call $require_auth
   (i64.load offset=8
    (tee_local $2
     (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE3getEyPKc
      (tee_local $0
       (i32.add
        (get_local $0)
        (i32.const 88)
       )
      )
      (get_local $1)
      (i32.const 2368)
     )
    )
   )
  )
  (call $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE5eraseERKS2_
   (get_local $0)
   (get_local $2)
  )
 )
 (func $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE3getEyPKc (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (set_local $4
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $6)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $5
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $5)
       (get_local $4)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $3)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $6
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $0)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $6
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -6146428328942239744)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=60
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (get_local $0)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (get_local $2)
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 640)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 688)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $8
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (set_local $8
     (tee_local $4
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 752)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $4
       (i32.load
        (get_local $5)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (loop $label$4
     (set_local $6
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $4
      (i32.load
       (get_local $7)
      )
     )
     (i32.store
      (get_local $7)
      (get_local $6)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $4)
       )
      )
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (i32.and
          (i32.load8_u offset=16
           (get_local $4)
          )
          (i32.const 1)
         )
        )
       )
       (call $_ZdlPv
        (i32.load
         (i32.add
          (get_local $4)
          (i32.const 24)
         )
        )
       )
      )
      (call $_ZdlPv
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (set_local $7
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$7
    (set_local $4
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (get_local $4)
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.eqz
        (i32.and
         (i32.load8_u offset=16
          (get_local $4)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $4)
         (i32.const 24)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$7
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=64
    (get_local $1)
   )
  )
  (block $label$10
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $7
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (br_if $label$10
     (i32.lt_s
      (tee_local $7
       (call $db_idx64_find_primary
        (i64.load
         (get_local $0)
        )
        (i64.load offset=8
         (get_local $0)
        )
        (i64.const -6146428328942239744)
        (i32.add
         (get_local $9)
         (i32.const 8)
        )
        (i64.load
         (get_local $1)
        )
       )
      )
      (i32.const 0)
     )
    )
   )
   (call $db_idx64_remove
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
 )
 (func $_ZN3pet7feedpetEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 116)
       )
      )
     )
     (tee_local $2
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $5)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $6)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $5
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $6
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 88)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 96)
        )
       )
       (i64.const -6146428328942239744)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=60
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $4)
        (get_local $6)
       )
      )
     )
     (get_local $4)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $6
    (i32.ne
     (get_local $5)
     (i32.const 0)
    )
   )
   (i32.const 1456)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=80
   (get_local $7)
   (i64.load
    (get_local $5)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 80)
     )
     (i32.const 16)
    )
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 52)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 52)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 44)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 44)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 36)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 36)
    )
   )
  )
  (i64.store offset=108 align=4
   (get_local $7)
   (i64.load offset=28 align=4
    (get_local $5)
   )
  )
  (call $_ZN3pet7_updateERN5types7st_petsE
   (get_local $0)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 80)
  )
  (call $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet7feedpetEyE4$_14EEvRKS2_yOT_
   (get_local $4)
   (get_local $5)
   (get_local $7)
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=96
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $7)
      (i32.const 104)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet7feedpetEyE4$_14EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (i32.store offset=36
   (get_local $1)
   (i32.load offset=36
    (i32.load
     (get_local $2)
    )
   )
  )
  (i64.store offset=16
   (tee_local $10
    (get_local $11)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
  )
  (set_local $3
   (i64.load
    (get_local $1)
   )
  )
  (set_local $8
   (call $current_time)
  )
  (set_local $9
   (i32.load offset=48
    (get_local $1)
   )
  )
  (set_local $6
   (i32.load offset=44
    (get_local $1)
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.le_u
       (i32.sub
        (i32.wrap/i64
         (i64.div_u
          (get_local $8)
          (i64.const 1000000)
         )
        )
        (i32.load offset=40
         (i32.load
          (get_local $2)
         )
        )
       )
       (i32.load offset=32
        (i32.load offset=4
         (get_local $2)
        )
       )
      )
     )
     (br_if $label$2
      (i32.gt_u
       (get_local $6)
       (get_local $9)
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$1
      (i32.eqz
       (i32.load
        (get_local $4)
       )
      )
     )
    )
    (block $label$3
     (br_if $label$3
      (i32.le_u
       (get_local $6)
       (get_local $9)
      )
     )
     (call $prints
      (i32.const 2432)
     )
     (br $label$0)
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (get_local $5)
      )
     )
     (br_if $label$0
      (i32.eqz
       (i32.load
        (get_local $4)
       )
      )
     )
     (call $prints
      (i32.const 2480)
     )
     (br $label$0)
    )
    (call $prints
     (i32.const 2464)
    )
    (br $label$0)
   )
   (i64.store32 offset=40
    (get_local $1)
    (i64.div_u
     (call $current_time)
     (i64.const 1000000)
    )
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 416)
  )
  (set_local $2
   (i32.add
    (tee_local $9
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 45)
   )
  )
  (set_local $8
   (i64.extend_u/i32
    (get_local $9)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (loop $label$5
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$5
    (i64.ne
     (tee_local $8
      (i64.shr_u
       (get_local $8)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$6
   (block $label$7
    (br_if $label$7
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $9
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$6)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $9
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $10)
   (get_local $9)
  )
  (i32.store
   (get_local $10)
   (get_local $9)
  )
  (i32.store offset=8
   (get_local $10)
   (i32.add
    (get_local $9)
    (get_local $2)
   )
  )
  (i32.store offset=24
   (get_local $10)
   (get_local $10)
  )
  (i32.store offset=40
   (get_local $10)
   (get_local $7)
  )
  (i32.store offset=52
   (get_local $10)
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $10)
   (get_local $1)
  )
  (i32.store offset=36
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=44
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=48
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=56
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=60
   (get_local $10)
   (get_local $5)
  )
  (i32.store offset=64
   (get_local $10)
   (get_local $6)
  )
  (i32.store offset=68
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
  )
  (i32.store offset=72
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio4nameERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKhRKmSN_SN_SN_SN_SN_SN_EEEZNS7_lsINS7_10datastreamIPcEEN5types7st_petsELPv0EEERT_SX_RKT0_EUlRKSW_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSX_OSY_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.add
    (get_local $10)
    (i32.const 24)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $9)
   (get_local $2)
  )
  (block $label$8
   (br_if $label$8
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $9)
   )
  )
  (block $label$9
   (br_if $label$9
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $10)
       (i32.const 16)
      )
      (i32.add
       (get_local $10)
       (i32.const 32)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $2
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -6146428328942239744)
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet6bedpetEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 116)
       )
      )
     )
     (tee_local $2
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $5)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $6)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $5
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $6
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 88)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 96)
        )
       )
       (i64.const -6146428328942239744)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=60
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $4)
        (get_local $6)
       )
      )
     )
     (get_local $4)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $6
    (i32.ne
     (get_local $5)
     (i32.const 0)
    )
   )
   (i32.const 1456)
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 80)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=80
   (get_local $7)
   (i64.load
    (get_local $5)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 80)
     )
     (i32.const 16)
    )
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 52)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 52)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 44)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 44)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 36)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 36)
    )
   )
  )
  (i64.store offset=108 align=4
   (get_local $7)
   (i64.load offset=28 align=4
    (get_local $5)
   )
  )
  (call $require_auth
   (i64.load
    (get_local $3)
   )
  )
  (call $_ZN3pet7_updateERN5types7st_petsE
   (get_local $0)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 80)
  )
  (call $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet6bedpetEyE4$_15EEvRKS2_yOT_
   (get_local $4)
   (get_local $5)
   (get_local $7)
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=96
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $7)
      (i32.const 104)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet6bedpetEyE4$_15EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (i32.store offset=36
   (get_local $1)
   (i32.load offset=36
    (i32.load
     (get_local $2)
    )
   )
  )
  (i64.store offset=16
   (tee_local $8
    (get_local $7)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
  )
  (set_local $3
   (i64.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.le_u
       (i32.sub
        (i32.wrap/i64
         (i64.div_u
          (call $current_time)
          (i64.const 1000000)
         )
        )
        (i32.load offset=48
         (i32.load
          (get_local $2)
         )
        )
       )
       (i32.load offset=40
        (i32.load offset=4
         (get_local $2)
        )
       )
      )
     )
     (br_if $label$1
      (i32.le_u
       (i32.load offset=44
        (get_local $1)
       )
       (i32.load offset=48
        (get_local $1)
       )
      )
     )
    )
    (call $prints
     (i32.const 2512)
    )
    (br $label$0)
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (i32.load
       (get_local $4)
      )
     )
    )
    (call $prints
     (i32.const 2544)
    )
    (br $label$0)
   )
   (i64.store32
    (i32.add
     (get_local $1)
     (i32.const 44)
    )
    (i64.div_u
     (call $current_time)
     (i64.const 1000000)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 416)
  )
  (set_local $2
   (i32.add
    (tee_local $5
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 45)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (get_local $5)
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (loop $label$4
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $7
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$5)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $7
     (i32.sub
      (get_local $7)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $8)
   (get_local $7)
  )
  (i32.store
   (get_local $8)
   (get_local $7)
  )
  (i32.store offset=8
   (get_local $8)
   (i32.add
    (get_local $7)
    (get_local $2)
   )
  )
  (i32.store offset=24
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=40
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=52
   (get_local $8)
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=36
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=44
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=48
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=56
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=60
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (i32.store offset=64
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (i32.store offset=68
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio4nameERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKhRKmSN_SN_SN_SN_SN_SN_EEEZNS7_lsINS7_10datastreamIPcEEN5types7st_petsELPv0EEERT_SX_RKT0_EUlRKSW_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSX_OSY_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
   (i32.add
    (get_local $8)
    (i32.const 24)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $7)
   (get_local $2)
  )
  (block $label$7
   (br_if $label$7
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (block $label$8
   (br_if $label$8
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=32
   (get_local $8)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.add
       (get_local $8)
       (i32.const 32)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.gt_s
      (tee_local $2
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -6146428328942239744)
       (i32.add
        (get_local $8)
        (i32.const 24)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet8awakepetEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $6
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 116)
       )
      )
     )
     (tee_local $2
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $6)
     (i32.const -24)
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $5)
       )
      )
      (get_local $1)
     )
    )
    (set_local $6
     (get_local $5)
    )
    (set_local $5
     (tee_local $4
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $6)
      (get_local $2)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $6)
          (i32.const -24)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 16)
    )
    (br $label$2)
   )
   (set_local $5
    (i32.const 0)
   )
   (br_if $label$2
    (i32.lt_s
     (tee_local $6
      (call $db_find_i64
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 88)
        )
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 96)
        )
       )
       (i64.const -6146428328942239744)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=60
      (tee_local $5
       (call $_ZNK5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE31load_object_by_primary_iteratorEl
        (get_local $4)
        (get_local $6)
       )
      )
     )
     (get_local $4)
    )
    (i32.const 16)
   )
  )
  (call $eosio_assert
   (tee_local $6
    (i32.ne
     (get_local $5)
     (i32.const 0)
    )
   )
   (i32.const 1456)
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 80)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=80
   (get_local $7)
   (i64.load
    (get_local $5)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 80)
     )
     (i32.const 16)
    )
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 52)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 52)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 44)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 44)
    )
   )
  )
  (i64.store align=4
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 36)
   )
   (i64.load align=4
    (i32.add
     (get_local $5)
     (i32.const 36)
    )
   )
  )
  (i64.store offset=108 align=4
   (get_local $7)
   (i64.load offset=28 align=4
    (get_local $5)
   )
  )
  (call $require_auth
   (i64.load
    (get_local $3)
   )
  )
  (call $_ZN3pet7_updateERN5types7st_petsE
   (get_local $0)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (call $_ZN3pet15_get_pet_configEv
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
   (get_local $0)
  )
  (i32.store offset=4
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 80)
  )
  (call $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet8awakepetEyE4$_16EEvRKS2_yOT_
   (get_local $4)
   (get_local $5)
   (get_local $7)
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=96
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $7)
      (i32.const 104)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12300315744767311872EN5types7st_petsEJNS_10indexed_byILy4587419431193280512EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_17get_pets_by_ownerEvEEEEEEEE6modifyIZN3pet8awakepetEyE4$_16EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 304)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 352)
  )
  (i32.store offset=36
   (get_local $1)
   (i32.load offset=36
    (i32.load
     (get_local $2)
    )
   )
  )
  (i64.store offset=16
   (tee_local $8
    (get_local $7)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
  )
  (set_local $3
   (i64.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.le_u
       (i32.sub
        (i32.wrap/i64
         (i64.div_u
          (call $current_time)
          (i64.const 1000000)
         )
        )
        (i32.load offset=44
         (i32.load
          (get_local $2)
         )
        )
       )
       (i32.load offset=44
        (i32.load offset=4
         (get_local $2)
        )
       )
      )
     )
     (br_if $label$2
      (i32.le_u
       (i32.load offset=44
        (get_local $1)
       )
       (i32.load offset=48
        (get_local $1)
       )
      )
     )
     (br_if $label$1
      (i32.eqz
       (i32.load
        (get_local $4)
       )
      )
     )
     (call $prints
      (i32.const 2592)
     )
     (br $label$0)
    )
    (call $prints
     (i32.const 2576)
    )
    (br $label$0)
   )
   (i64.store32
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
    (i64.div_u
     (call $current_time)
     (i64.const 1000000)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 416)
  )
  (set_local $2
   (i32.add
    (tee_local $5
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 45)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (get_local $5)
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (loop $label$3
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$3
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $7
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$4)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $7
     (i32.sub
      (get_local $7)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $8)
   (get_local $7)
  )
  (i32.store
   (get_local $8)
   (get_local $7)
  )
  (i32.store offset=8
   (get_local $8)
   (i32.add
    (get_local $7)
    (get_local $2)
   )
  )
  (i32.store offset=24
   (get_local $8)
   (get_local $8)
  )
  (i32.store offset=40
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=52
   (get_local $8)
   (get_local $4)
  )
  (i32.store offset=32
   (get_local $8)
   (get_local $1)
  )
  (i32.store offset=36
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=44
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=48
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=56
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=60
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (i32.store offset=64
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (i32.store offset=68
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 52)
   )
  )
  (i32.store offset=72
   (get_local $8)
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKN5eosio4nameERKNSt3__112basic_stringIcNSB_11char_traitsIcEENSB_9allocatorIcEEEERKhRKmSN_SN_SN_SN_SN_SN_EEEZNS7_lsINS7_10datastreamIPcEEN5types7st_petsELPv0EEERT_SX_RKT0_EUlRKSW_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSX_OSY_NSB_16integer_sequenceIjJXspT1_EEEENSB_17integral_constantIbLb0EEE
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
   (i32.add
    (get_local $8)
    (i32.const 24)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $7)
   (get_local $2)
  )
  (block $label$6
   (br_if $label$6
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $7)
   )
  )
  (block $label$7
   (br_if $label$7
    (i64.lt_u
     (get_local $3)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=32
   (get_local $8)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.add
       (get_local $8)
       (i32.const 32)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $2
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -6146428328942239744)
       (i32.add
        (get_local $8)
        (i32.const 24)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
 )
 (func $_ZN3pet8transferEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $prints
   (i32.const 2624)
  )
  (call $printui
   (get_local $1)
  )
  (call $prints
   (i32.const 2640)
  )
  (call $printn
   (get_local $1)
  )
  (call $prints
   (i32.const 2656)
  )
  (call $printui
   (get_local $2)
  )
  (call $prints
   (i32.const 2640)
  )
  (call $printn
   (get_local $2)
  )
  (call $_ZN5eosio18unpack_action_dataIN5types11st_transferEEET_v
   (i32.add
    (get_local $9)
    (i32.const 64)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.eq
     (i64.load offset=64
      (get_local $9)
     )
     (tee_local $2
      (i64.load
       (get_local $0)
      )
     )
    )
   )
   (br_if $label$0
    (i64.ne
     (i64.load offset=72
      (get_local $9)
     )
     (get_local $2)
    )
   )
   (call $prints
    (i32.const 2688)
   )
   (call $_ZNK5eosio5asset5printEv
    (tee_local $6
     (i32.add
      (get_local $9)
      (i32.const 80)
     )
    )
   )
   (call $eosio_assert
    (i64.eq
     (i64.load
      (tee_local $5
       (i32.add
        (i32.add
         (get_local $9)
         (i32.const 64)
        )
        (i32.const 24)
       )
      )
     )
     (i64.const 1397703940)
    )
    (i32.const 2992)
   )
   (set_local $8
    (i32.const 0)
   )
   (set_local $4
    (i32.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i64.ge_u
      (i64.add
       (i64.load
        (get_local $6)
       )
       (i64.const 4611686018427387903)
      )
      (i64.const 9223372036854775807)
     )
    )
    (set_local $2
     (i64.shr_u
      (i64.load
       (get_local $5)
      )
      (i64.const 8)
     )
    )
    (set_local $5
     (i32.const 0)
    )
    (block $label$2
     (loop $label$3
      (br_if $label$2
       (i32.gt_u
        (i32.add
         (i32.shl
          (i32.wrap/i64
           (get_local $2)
          )
          (i32.const 24)
         )
         (i32.const -1073741825)
        )
        (i32.const 452984830)
       )
      )
      (block $label$4
       (br_if $label$4
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (loop $label$5
        (br_if $label$2
         (i64.ne
          (i64.and
           (tee_local $2
            (i64.shr_u
             (get_local $2)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (br_if $label$5
         (i32.lt_s
          (tee_local $5
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (i32.const 7)
         )
        )
       )
      )
      (set_local $4
       (i32.const 1)
      )
      (br_if $label$3
       (i32.lt_s
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.const 7)
       )
      )
      (br $label$1)
     )
    )
    (set_local $4
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (get_local $4)
    (i32.const 2736)
   )
   (call $eosio_assert
    (i64.gt_s
     (i64.load
      (get_local $6)
     )
     (i64.const 0)
    )
    (i32.const 2768)
   )
   (i64.store offset=40
    (get_local $9)
    (i64.const -1)
   )
   (i32.store offset=48
    (get_local $9)
    (i32.const 0)
   )
   (set_local $2
    (i64.load offset=64
     (get_local $9)
    )
   )
   (i64.store offset=24
    (get_local $9)
    (i64.load
     (get_local $0)
    )
   )
   (i64.store offset=32
    (get_local $9)
    (get_local $2)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 52)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 56)
    )
    (i32.const 0)
   )
   (i64.store offset=16
    (get_local $9)
    (i64.const 1398362884)
   )
   (i64.store offset=8
    (get_local $9)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.const 1)
    (i32.const 192)
   )
   (set_local $2
    (i64.const 5462355)
   )
   (block $label$6
    (loop $label$7
     (set_local $5
      (i32.const 0)
     )
     (br_if $label$6
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $2)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$8
      (br_if $label$8
       (i64.ne
        (i64.and
         (tee_local $2
          (i64.shr_u
           (get_local $2)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$9
       (br_if $label$6
        (i64.ne
         (i64.and
          (tee_local $2
           (i64.shr_u
            (get_local $2)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$9
        (i32.lt_s
         (tee_local $8
          (i32.add
           (get_local $8)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$7
      (i32.lt_s
       (tee_local $8
        (i32.add
         (get_local $8)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
    )
   )
   (call $eosio_assert
    (get_local $5)
    (i32.const 256)
   )
   (set_local $2
    (i64.shr_u
     (i64.load
      (i32.add
       (i32.add
        (get_local $9)
        (i32.const 64)
       )
       (i32.const 24)
      )
     )
     (i64.const 8)
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eq
      (tee_local $0
       (i32.load
        (i32.add
         (get_local $9)
         (i32.const 52)
        )
       )
      )
      (tee_local $3
       (i32.load
        (i32.add
         (i32.add
          (get_local $9)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
      )
     )
    )
    (set_local $8
     (i32.add
      (get_local $0)
      (i32.const -24)
     )
    )
    (set_local $4
     (i32.sub
      (i32.const 0)
      (get_local $3)
     )
    )
    (loop $label$11
     (br_if $label$10
      (i64.eq
       (i64.shr_u
        (i64.load offset=8
         (i32.load
          (get_local $8)
         )
        )
        (i64.const 8)
       )
       (get_local $2)
      )
     )
     (set_local $0
      (get_local $8)
     )
     (set_local $8
      (tee_local $5
       (i32.add
        (get_local $8)
        (i32.const -24)
       )
      )
     )
     (br_if $label$11
      (i32.ne
       (i32.add
        (get_local $5)
        (get_local $4)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$12
    (block $label$13
     (block $label$14
      (block $label$15
       (block $label$16
        (br_if $label$16
         (i32.eq
          (get_local $0)
          (get_local $3)
         )
        )
        (call $eosio_assert
         (i32.eq
          (i32.load offset=16
           (tee_local $8
            (i32.load
             (i32.add
              (get_local $0)
              (i32.const -24)
             )
            )
           )
          )
          (i32.add
           (get_local $9)
           (i32.const 24)
          )
         )
         (i32.const 16)
        )
        (set_local $1
         (i64.load offset=64
          (get_local $9)
         )
        )
        (br_if $label$15
         (get_local $8)
        )
        (br $label$13)
       )
       (br_if $label$14
        (i32.le_s
         (tee_local $8
          (call $db_find_i64
           (i64.load offset=24
            (get_local $9)
           )
           (i64.load
            (i32.add
             (get_local $9)
             (i32.const 32)
            )
           )
           (i64.const 3607749779137757184)
           (get_local $2)
          )
         )
         (i32.const -1)
        )
       )
       (call $eosio_assert
        (i32.eq
         (i32.load offset=16
          (tee_local $8
           (call $_ZNK5eosio11multi_indexILy3607749779137757184EN5types10st_accountEJEE31load_object_by_primary_iteratorEl
            (i32.add
             (get_local $9)
             (i32.const 24)
            )
            (get_local $8)
           )
          )
         )
         (i32.add
          (get_local $9)
          (i32.const 24)
         )
        )
        (i32.const 16)
       )
       (set_local $1
        (i64.load offset=64
         (get_local $9)
        )
       )
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 80)
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=16
         (get_local $8)
        )
        (i32.add
         (get_local $9)
         (i32.const 24)
        )
       )
       (i32.const 304)
      )
      (call $eosio_assert
       (i64.eq
        (i64.load offset=24
         (get_local $9)
        )
        (call $current_receiver)
       )
       (i32.const 352)
      )
      (call $eosio_assert
       (i64.eq
        (i64.load
         (i32.add
          (get_local $9)
          (i32.const 88)
         )
        )
        (tee_local $2
         (i64.load offset=8
          (get_local $8)
         )
        )
       )
       (i32.const 2800)
      )
      (i64.store
       (get_local $8)
       (tee_local $7
        (i64.add
         (i64.load
          (get_local $8)
         )
         (i64.load offset=80
          (get_local $9)
         )
        )
       )
      )
      (call $eosio_assert
       (i64.gt_s
        (get_local $7)
        (i64.const -4611686018427387904)
       )
       (i32.const 2848)
      )
      (call $eosio_assert
       (i64.lt_s
        (i64.load
         (get_local $8)
        )
        (i64.const 4611686018427387904)
       )
       (i32.const 2880)
      )
      (i64.store
       (i32.add
        (i32.add
         (get_local $9)
         (i32.const 8)
        )
        (i32.const 8)
       )
       (i64.load offset=8
        (get_local $8)
       )
      )
      (i64.store offset=8
       (get_local $9)
       (i64.load
        (get_local $8)
       )
      )
      (call $eosio_assert
       (i64.eq
        (tee_local $2
         (i64.shr_u
          (get_local $2)
          (i64.const 8)
         )
        )
        (i64.shr_u
         (i64.load offset=8
          (get_local $8)
         )
         (i64.const 8)
        )
       )
       (i32.const 416)
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 288)
      )
      (drop
       (call $memcpy
        (i32.add
         (get_local $9)
         (i32.const 112)
        )
        (get_local $8)
        (i32.const 8)
       )
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 288)
      )
      (drop
       (call $memcpy
        (i32.or
         (i32.add
          (get_local $9)
          (i32.const 112)
         )
         (i32.const 8)
        )
        (i32.add
         (get_local $8)
         (i32.const 8)
        )
        (i32.const 8)
       )
      )
      (call $db_update_i64
       (i32.load offset=20
        (get_local $8)
       )
       (get_local $1)
       (i32.add
        (get_local $9)
        (i32.const 112)
       )
       (i32.const 16)
      )
      (br_if $label$12
       (i64.lt_u
        (get_local $2)
        (i64.load
         (tee_local $8
          (i32.add
           (i32.add
            (get_local $9)
            (i32.const 24)
           )
           (i32.const 16)
          )
         )
        )
       )
      )
      (i64.store
       (get_local $8)
       (i64.add
        (get_local $2)
        (i64.const 1)
       )
      )
      (br $label$12)
     )
     (set_local $1
      (i64.load offset=64
       (get_local $9)
      )
     )
    )
    (call $eosio_assert
     (i64.eq
      (i64.load offset=24
       (get_local $9)
      )
      (call $current_receiver)
     )
     (i32.const 128)
    )
    (i64.store offset=8
     (tee_local $5
      (call $_Znwj
       (i32.const 32)
      )
     )
     (i64.const 1398362884)
    )
    (i64.store
     (get_local $5)
     (i64.const 0)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 192)
    )
    (set_local $4
     (i32.add
      (get_local $5)
      (i32.const 8)
     )
    )
    (set_local $2
     (i64.const 5462355)
    )
    (set_local $8
     (i32.const 0)
    )
    (block $label$17
     (block $label$18
      (loop $label$19
       (br_if $label$18
        (i32.gt_u
         (i32.add
          (i32.shl
           (i32.wrap/i64
            (get_local $2)
           )
           (i32.const 24)
          )
          (i32.const -1073741825)
         )
         (i32.const 452984830)
        )
       )
       (block $label$20
        (br_if $label$20
         (i64.ne
          (i64.and
           (tee_local $2
            (i64.shr_u
             (get_local $2)
             (i64.const 8)
            )
           )
           (i64.const 255)
          )
          (i64.const 0)
         )
        )
        (loop $label$21
         (br_if $label$18
          (i64.ne
           (i64.and
            (tee_local $2
             (i64.shr_u
              (get_local $2)
              (i64.const 8)
             )
            )
            (i64.const 255)
           )
           (i64.const 0)
          )
         )
         (br_if $label$21
          (i32.lt_s
           (tee_local $8
            (i32.add
             (get_local $8)
             (i32.const 1)
            )
           )
           (i32.const 7)
          )
         )
        )
       )
       (set_local $0
        (i32.const 1)
       )
       (br_if $label$19
        (i32.lt_s
         (tee_local $8
          (i32.add
           (get_local $8)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
       (br $label$17)
      )
     )
     (set_local $0
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (get_local $0)
     (i32.const 256)
    )
    (i32.store offset=16
     (get_local $5)
     (i32.add
      (get_local $9)
      (i32.const 24)
     )
    )
    (i64.store
     (i32.add
      (i32.add
       (get_local $9)
       (i32.const 8)
      )
      (i32.const 8)
     )
     (tee_local $2
      (i64.load
       (i32.add
        (get_local $6)
        (i32.const 8)
       )
      )
     )
    )
    (i64.store
     (tee_local $8
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
     )
     (get_local $2)
    )
    (i64.store
     (get_local $5)
     (tee_local $2
      (i64.load
       (get_local $6)
      )
     )
    )
    (i64.store offset=8
     (get_local $9)
     (get_local $2)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $9)
       (i32.const 112)
      )
      (get_local $5)
      (i32.const 8)
     )
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 288)
    )
    (drop
     (call $memcpy
      (i32.or
       (i32.add
        (get_local $9)
        (i32.const 112)
       )
       (i32.const 8)
      )
      (get_local $4)
      (i32.const 8)
     )
    )
    (i32.store offset=20
     (get_local $5)
     (tee_local $0
      (call $db_store_i64
       (i64.load
        (i32.add
         (i32.add
          (get_local $9)
          (i32.const 24)
         )
         (i32.const 8)
        )
       )
       (i64.const 3607749779137757184)
       (get_local $1)
       (tee_local $2
        (i64.shr_u
         (i64.load
          (get_local $8)
         )
         (i64.const 8)
        )
       )
       (i32.add
        (get_local $9)
        (i32.const 112)
       )
       (i32.const 16)
      )
     )
    )
    (block $label$22
     (br_if $label$22
      (i64.lt_u
       (get_local $2)
       (i64.load
        (tee_local $4
         (i32.add
          (i32.add
           (get_local $9)
           (i32.const 24)
          )
          (i32.const 16)
         )
        )
       )
      )
     )
     (i64.store
      (get_local $4)
      (i64.add
       (get_local $2)
       (i64.const 1)
      )
     )
    )
    (i32.store offset=136
     (get_local $9)
     (get_local $5)
    )
    (i64.store offset=112
     (get_local $9)
     (tee_local $2
      (i64.shr_u
       (i64.load
        (get_local $8)
       )
       (i64.const 8)
      )
     )
    )
    (i32.store offset=132
     (get_local $9)
     (get_local $0)
    )
    (block $label$23
     (block $label$24
      (br_if $label$24
       (i32.ge_u
        (tee_local $8
         (i32.load
          (tee_local $4
           (i32.add
            (get_local $9)
            (i32.const 52)
           )
          )
         )
        )
        (i32.load
         (i32.add
          (get_local $9)
          (i32.const 56)
         )
        )
       )
      )
      (i64.store offset=8
       (get_local $8)
       (get_local $2)
      )
      (i32.store offset=16
       (get_local $8)
       (get_local $0)
      )
      (i32.store offset=136
       (get_local $9)
       (i32.const 0)
      )
      (i32.store
       (get_local $8)
       (get_local $5)
      )
      (i32.store
       (get_local $4)
       (i32.add
        (get_local $8)
        (i32.const 24)
       )
      )
      (br $label$23)
     )
     (call $_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN5types10st_accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
      (i32.add
       (get_local $9)
       (i32.const 48)
      )
      (i32.add
       (get_local $9)
       (i32.const 136)
      )
      (i32.add
       (get_local $9)
       (i32.const 112)
      )
      (i32.add
       (get_local $9)
       (i32.const 132)
      )
     )
    )
    (set_local $8
     (i32.load offset=136
      (get_local $9)
     )
    )
    (i32.store offset=136
     (get_local $9)
     (i32.const 0)
    )
    (br_if $label$12
     (i32.eqz
      (get_local $8)
     )
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (set_local $2
    (i64.load offset=64
     (get_local $9)
    )
   )
   (call $prints
    (i32.const 2912)
   )
   (call $printn
    (get_local $2)
   )
   (call $prints
    (i32.const 2928)
   )
   (call $_ZNK5eosio5asset5printEv
    (get_local $6)
   )
   (set_local $2
    (i64.load offset=64
     (get_local $9)
    )
   )
   (call $prints
    (i32.const 2912)
   )
   (call $printn
    (get_local $2)
   )
   (call $prints
    (i32.const 2960)
   )
   (call $_ZNK5eosio5asset5printEv
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
   )
   (br_if $label$0
    (i32.eqz
     (tee_local $0
      (i32.load offset=48
       (get_local $9)
      )
     )
    )
   )
   (block $label$25
    (block $label$26
     (br_if $label$26
      (i32.eq
       (tee_local $8
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $9)
           (i32.const 52)
          )
         )
        )
       )
       (get_local $0)
      )
     )
     (loop $label$27
      (set_local $5
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $8)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $8)
       (i32.const 0)
      )
      (block $label$28
       (br_if $label$28
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$27
       (i32.ne
        (get_local $0)
        (get_local $8)
       )
      )
     )
     (set_local $8
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 48)
       )
      )
     )
     (br $label$25)
    )
    (set_local $8
     (get_local $0)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $8)
   )
  )
  (block $label$29
   (br_if $label$29
    (i32.eqz
     (i32.and
      (i32.load8_u offset=96
       (get_local $9)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $9)
      (i32.const 104)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio18unpack_action_dataIN5types11st_transferEEET_v (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (tee_local $2
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $1
       (call $action_data_size)
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $1)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $2)
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (drop
   (call $read_action_data
    (get_local $2)
    (get_local $1)
   )
  )
  (call $_ZN5eosio6unpackIN5types11st_transferEEET_PKcj
   (get_local $0)
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $3)
  )
 )
 (func $_ZNK5eosio5asset5printEv (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (set_local $10
   (tee_local $2
    (i32.load offset=4
     (i32.const 0)
    )
   )
  )
  (set_local $7
   (i64.const 1)
  )
  (block $label$0
   (br_if $label$0
    (tee_local $5
     (i64.eqz
      (tee_local $8
       (i64.load8_u offset=8
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $9
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.const 1)
   )
   (loop $label$1
    (set_local $7
     (i64.mul
      (get_local $7)
      (i64.const 10)
     )
    )
    (br_if $label$1
     (i64.gt_s
      (tee_local $9
       (i64.add
        (get_local $9)
        (i64.const -1)
       )
      )
      (i64.const 1)
     )
    )
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (get_local $2)
     (i32.and
      (i32.add
       (i32.wrap/i64
        (i64.add
         (get_local $8)
         (i64.const 1)
        )
       )
       (i32.const 15)
      )
      (i32.const 1008)
     )
    )
   )
  )
  (i32.store8
   (tee_local $6
    (i32.add
     (get_local $2)
     (tee_local $3
      (i32.wrap/i64
       (get_local $8)
      )
     )
    )
   )
   (i32.const 0)
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (block $label$2
   (br_if $label$2
    (get_local $5)
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.rem_s
     (get_local $4)
     (get_local $7)
    )
   )
   (set_local $0
    (i32.add
     (get_local $6)
     (i32.const -1)
    )
   )
   (loop $label$3
    (i64.store8
     (get_local $0)
     (i64.add
      (i64.rem_s
       (get_local $9)
       (i64.const 10)
      )
      (i64.const 48)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const -1)
     )
    )
    (set_local $9
     (i64.div_s
      (get_local $9)
      (i64.const 10)
     )
    )
    (br_if $label$3
     (i64.gt_s
      (tee_local $8
       (i64.add
        (get_local $8)
        (i64.const -1)
       )
      )
      (i64.const 1)
     )
    )
   )
  )
  (call $printi
   (i64.div_s
    (get_local $4)
    (get_local $7)
   )
  )
  (call $prints
   (i32.const 3040)
  )
  (call $prints_l
   (get_local $2)
   (get_local $3)
  )
  (call $prints
   (i32.const 3056)
  )
  (call $_ZNK5eosio11symbol_type5printEb
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $10)
  )
 )
 (func $_ZNK5eosio11multi_indexILy3607749779137757184EN5types10st_accountEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=44
   (tee_local $8
    (get_local $9)
   )
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 480)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=12
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
   (i32.store offset=16
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 44)
    )
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $0)
   )
   (set_local $6
    (call $_ZN5eosio11multi_indexILy3607749779137757184EN5types10st_accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
     (tee_local $4
      (call $_Znwj
       (i32.const 32)
      )
     )
     (get_local $0)
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $4)
   )
   (i64.store offset=8
    (get_local $8)
    (tee_local $5
     (i64.shr_u
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 8)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (tee_local $1
     (i32.load offset=20
      (get_local $4)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $7
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $7)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $7)
      (get_local $1)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $7)
      (get_local $4)
     )
     (i32.store
      (get_local $3)
      (i32.add
       (get_local $7)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN5types10st_accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN5types10st_accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy3607749779137757184EN5types10st_accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (i64.store offset=8
   (get_local $0)
   (i64.const 1398362884)
  )
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 192)
  )
  (set_local $3
   (i64.shr_u
    (i64.load offset=8
     (get_local $0)
    )
    (i64.const 8)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 256)
  )
  (i32.store offset=16
   (get_local $0)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load offset=4
        (get_local $2)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $5
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.load
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $_ZNK5eosio11symbol_type5printEb (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $printui
    (i64.load8_u
     (get_local $0)
    )
   )
   (call $prints
    (i32.const 3072)
   )
  )
  (i32.store8 offset=15
   (get_local $3)
   (tee_local $0
    (i32.wrap/i64
     (i64.shr_u
      (tee_local $2
       (i64.load
        (get_local $0)
       )
      )
      (i64.const 8)
     )
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 16)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 24)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 32)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 40)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 48)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 56)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio6unpackIN5types11st_transferEEET_PKcj (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i64.const 1398362884)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 192)
  )
  (set_local $3
   (i64.const 5462355)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 256)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=32 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store offset=12
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=16
   (get_local $6)
   (i32.add
    (get_local $1)
    (get_local $2)
   )
  )
  (i32.store offset=24
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (get_local $0)
  )
  (i32.store offset=40
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.store offset=44
   (get_local $6)
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEEN5types11st_transferELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (i32.add
    (get_local $6)
    (i32.const 24)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RN5eosio5assetERNSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEZNS6_rsINS6_10datastreamIPKcEEN5types11st_transferELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3EEEEvSR_OSS_NS9_16integer_sequenceIjJXspT1_EEEENS9_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $2)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
 )
 (func $_ZN3pet15_calc_hunger_hpERKhRKmS1_S3_S3_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (tee_local $2
      (i32.div_u
       (i32.mul
        (tee_local $1
         (i32.load8_u
          (get_local $1)
         )
        )
        (tee_local $5
         (i32.sub
          (i32.load
           (get_local $5)
          )
          (i32.load
           (get_local $4)
          )
         )
        )
       )
       (i32.load
        (get_local $2)
       )
      )
     )
     (get_local $1)
    )
   )
   (set_local $6
    (i32.div_u
     (i32.sub
      (get_local $2)
      (get_local $1)
     )
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (call $prints
   (i32.const 2256)
  )
  (call $printui
   (i64.extend_u/i32
    (get_local $2)
   )
  )
  (call $prints
   (i32.const 2288)
  )
  (call $printui
   (i64.extend_u/i32
    (get_local $5)
   )
  )
  (get_local $6)
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 624)
    )
   )
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $5
   (i64.const 59)
  )
  (set_local $4
   (i32.const 3088)
  )
  (set_local $7
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $6)
          (i64.const 6)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $4)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $8
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $6)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $8
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $8
     (i64.shl
      (i64.and
       (get_local $8)
       (i64.const 31)
      )
      (i64.and
       (get_local $5)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.or
     (get_local $8)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $7)
     (get_local $2)
    )
   )
   (set_local $6
    (i64.const 0)
   )
   (set_local $5
    (i64.const 59)
   )
   (set_local $4
    (i32.const 3104)
   )
   (set_local $7
    (i64.const 0)
   )
   (loop $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (br_if $label$12
          (i64.gt_u
           (get_local $6)
           (i64.const 4)
          )
         )
         (br_if $label$11
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $3
              (i32.load8_s
               (get_local $4)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 165)
          )
         )
         (br $label$10)
        )
        (set_local $8
         (i64.const 0)
        )
        (br_if $label$9
         (i64.le_u
          (get_local $6)
          (i64.const 11)
         )
        )
        (br $label$8)
       )
       (set_local $3
        (select
         (i32.add
          (get_local $3)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $3)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $8
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $3)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $8
      (i64.shl
       (i64.and
        (get_local $8)
        (i64.const 31)
       )
       (i64.and
        (get_local $5)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (set_local $6
     (i64.add
      (get_local $6)
      (i64.const 1)
     )
    )
    (set_local $7
     (i64.or
      (get_local $8)
      (get_local $7)
     )
    )
    (br_if $label$7
     (i64.ne
      (tee_local $5
       (i64.add
        (get_local $5)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (call $eosio_assert
    (i64.eq
     (get_local $7)
     (get_local $1)
    )
    (i32.const 3120)
   )
  )
  (block $label$13
   (block $label$14
    (br_if $label$14
     (i64.eq
      (get_local $1)
      (get_local $0)
     )
    )
    (set_local $6
     (i64.const 0)
    )
    (set_local $5
     (i64.const 59)
    )
    (set_local $4
     (i32.const 3184)
    )
    (set_local $7
     (i64.const 0)
    )
    (loop $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (block $label$19
         (block $label$20
          (br_if $label$20
           (i64.gt_u
            (get_local $6)
            (i64.const 10)
           )
          )
          (br_if $label$19
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $3
               (i32.load8_s
                (get_local $4)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 165)
           )
          )
          (br $label$18)
         )
         (set_local $8
          (i64.const 0)
         )
         (br_if $label$17
          (i64.eq
           (get_local $6)
           (i64.const 11)
          )
         )
         (br $label$16)
        )
        (set_local $3
         (select
          (i32.add
           (get_local $3)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $3)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $8
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $8
       (i64.shl
        (i64.and
         (get_local $8)
         (i64.const 31)
        )
        (i64.and
         (get_local $5)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $4
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (set_local $7
      (i64.or
       (get_local $8)
       (get_local $7)
      )
     )
     (br_if $label$15
      (i64.ne
       (tee_local $6
        (i64.add
         (get_local $6)
         (i64.const 1)
        )
       )
       (i64.const 13)
      )
     )
    )
    (br_if $label$14
     (i64.eq
      (get_local $7)
      (get_local $1)
     )
    )
    (set_local $6
     (i64.const 0)
    )
    (set_local $5
     (i64.const 59)
    )
    (set_local $4
     (i32.const 3088)
    )
    (set_local $7
     (i64.const 0)
    )
    (loop $label$21
     (block $label$22
      (block $label$23
       (block $label$24
        (block $label$25
         (block $label$26
          (br_if $label$26
           (i64.gt_u
            (get_local $6)
            (i64.const 6)
           )
          )
          (br_if $label$25
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $3
               (i32.load8_s
                (get_local $4)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 165)
           )
          )
          (br $label$24)
         )
         (set_local $8
          (i64.const 0)
         )
         (br_if $label$23
          (i64.le_u
           (get_local $6)
           (i64.const 11)
          )
         )
         (br $label$22)
        )
        (set_local $3
         (select
          (i32.add
           (get_local $3)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $3)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $8
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $8
       (i64.shl
        (i64.and
         (get_local $8)
         (i64.const 31)
        )
        (i64.and
         (get_local $5)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $4
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $6
      (i64.add
       (get_local $6)
       (i64.const 1)
      )
     )
     (set_local $7
      (i64.or
       (get_local $8)
       (get_local $7)
      )
     )
     (br_if $label$21
      (i64.ne
       (tee_local $5
        (i64.add
         (get_local $5)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
    (br_if $label$13
     (i64.ne
      (get_local $7)
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 392)
    )
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 400)
    )
    (i64.const -1)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 408)
    )
    (i64.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 416)
    )
    (i32.const 0)
   )
   (i64.store offset=384
    (get_local $9)
    (get_local $0)
   )
   (i64.store offset=376
    (get_local $9)
    (get_local $0)
   )
   (i64.store offset=424
    (get_local $9)
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 432)
    )
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 440)
    )
    (i64.const -1)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 448)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 452)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 456)
    )
    (i32.const 0)
   )
   (i64.store offset=464
    (get_local $9)
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 472)
    )
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 480)
    )
    (i64.const -1)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 488)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 492)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 496)
    )
    (i32.const 0)
   )
   (i32.store8
    (i32.add
     (get_local $9)
     (i32.const 500)
    )
    (i32.const 0)
   )
   (i64.store offset=504
    (get_local $9)
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 512)
    )
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 520)
    )
    (i64.const -1)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 528)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 532)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 536)
    )
    (i32.const 0)
   )
   (i64.store offset=544
    (get_local $9)
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 552)
    )
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 560)
    )
    (i64.const -1)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 568)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 572)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 576)
    )
    (i32.const 0)
   )
   (i64.store offset=584
    (get_local $9)
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 592)
    )
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 600)
    )
    (i64.const -1)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 608)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 612)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 616)
    )
    (i32.const 0)
   )
   (block $label$27
    (block $label$28
     (block $label$29
      (block $label$30
       (block $label$31
        (block $label$32
         (block $label$33
          (block $label$34
           (block $label$35
            (block $label$36
             (block $label$37
              (block $label$38
               (block $label$39
                (block $label$40
                 (block $label$41
                  (block $label$42
                   (block $label$43
                    (block $label$44
                     (block $label$45
                      (block $label$46
                       (block $label$47
                        (block $label$48
                         (block $label$49
                          (br_if $label$49
                           (i64.le_s
                            (get_local $2)
                            (i64.const 4157834741622895103)
                           )
                          )
                          (br_if $label$48
                           (i64.gt_s
                            (get_local $2)
                            (i64.const 4849591923868770815)
                           )
                          )
                          (br_if $label$46
                           (i64.gt_s
                            (get_local $2)
                            (i64.const 4849591923046458591)
                           )
                          )
                          (br_if $label$42
                           (i64.eq
                            (get_local $2)
                            (i64.const 4157834741622895104)
                           )
                          )
                          (br_if $label$41
                           (i64.eq
                            (get_local $2)
                            (i64.const 4220811163761377280)
                           )
                          )
                          (br_if $label$27
                           (i64.ne
                            (get_local $2)
                            (i64.const 4849591923046458464)
                           )
                          )
                          (i32.store offset=204
                           (get_local $9)
                           (i32.const 0)
                          )
                          (i32.store offset=200
                           (get_local $9)
                           (i32.const 1)
                          )
                          (i64.store offset=176 align=4
                           (get_local $9)
                           (i64.load offset=200
                            (get_local $9)
                           )
                          )
                          (drop
                           (call $_ZN5eosio14execute_actionI3petS1_JhEEEbPT_MT0_FvDpT1_E
                            (i32.add
                             (get_local $9)
                             (i32.const 376)
                            )
                            (i32.add
                             (get_local $9)
                             (i32.const 176)
                            )
                           )
                          )
                          (br $label$27)
                         )
                         (br_if $label$47
                          (i64.le_s
                           (get_local $2)
                           (i64.const 4157834731968893183)
                          )
                         )
                         (br_if $label$45
                          (i64.gt_s
                           (get_local $2)
                           (i64.const 4157834736711286783)
                          )
                         )
                         (br_if $label$40
                          (i64.eq
                           (get_local $2)
                           (i64.const 4157834731968893184)
                          )
                         )
                         (br_if $label$39
                          (i64.eq
                           (get_local $2)
                           (i64.const 4157834733001224864)
                          )
                         )
                         (br_if $label$27
                          (i64.ne
                           (get_local $2)
                           (i64.const 4157834734465691856)
                          )
                         )
                         (i32.store offset=276
                          (get_local $9)
                          (i32.const 0)
                         )
                         (i32.store offset=272
                          (get_local $9)
                          (i32.const 2)
                         )
                         (i64.store offset=104 align=4
                          (get_local $9)
                          (i64.load offset=272
                           (get_local $9)
                          )
                         )
                         (drop
                          (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_EEEbPT_MT0_FvDpT1_E
                           (i32.add
                            (get_local $9)
                            (i32.const 376)
                           )
                           (i32.add
                            (get_local $9)
                            (i32.const 104)
                           )
                          )
                         )
                         (br $label$27)
                        )
                        (br_if $label$44
                         (i64.gt_s
                          (get_local $2)
                          (i64.const 5031766163945160703)
                         )
                        )
                        (br_if $label$38
                         (i64.eq
                          (get_local $2)
                          (i64.const 4849591923868770816)
                         )
                        )
                        (br_if $label$37
                         (i64.eq
                          (get_local $2)
                          (i64.const 4849591924833956752)
                         )
                        )
                        (br_if $label$27
                         (i64.ne
                          (get_local $2)
                          (i64.const 4849591930630077776)
                         )
                        )
                        (i32.store offset=244
                         (get_local $9)
                         (i32.const 0)
                        )
                        (i32.store offset=240
                         (get_local $9)
                         (i32.const 3)
                        )
                        (i64.store offset=136 align=4
                         (get_local $9)
                         (i64.load offset=240
                          (get_local $9)
                         )
                        )
                        (drop
                         (call $_ZN5eosio14execute_actionI3petS1_JyNSt3__16vectorIhNS2_9allocatorIhEEEEEEEbPT_MT0_FvDpT1_E
                          (i32.add
                           (get_local $9)
                           (i32.const 376)
                          )
                          (i32.add
                           (get_local $9)
                           (i32.const 136)
                          )
                         )
                        )
                        (br $label$27)
                       )
                       (br_if $label$43
                        (i64.le_s
                         (get_local $2)
                         (i64.const 3626146099591359135)
                        )
                       )
                       (br_if $label$36
                        (i64.eq
                         (get_local $2)
                         (i64.const 3626146099591359136)
                        )
                       )
                       (br_if $label$35
                        (i64.eq
                         (get_local $2)
                         (i64.const 3626336026884734976)
                        )
                       )
                       (br_if $label$27
                        (i64.ne
                         (get_local $2)
                         (i64.const 3966832710906806272)
                        )
                       )
                       (i32.store offset=340
                        (get_local $9)
                        (i32.const 0)
                       )
                       (i32.store offset=336
                        (get_local $9)
                        (i32.const 4)
                       )
                       (i64.store offset=40 align=4
                        (get_local $9)
                        (i64.load offset=336
                         (get_local $9)
                        )
                       )
                       (drop
                        (call $_ZN5eosio14execute_actionI3petS1_JyEEEbPT_MT0_FvDpT1_E
                         (i32.add
                          (get_local $9)
                          (i32.const 376)
                         )
                         (i32.add
                          (get_local $9)
                          (i32.const 40)
                         )
                        )
                       )
                       (br $label$27)
                      )
                      (br_if $label$34
                       (i64.eq
                        (get_local $2)
                        (i64.const 4849591923046458592)
                       )
                      )
                      (br_if $label$33
                       (i64.eq
                        (get_local $2)
                        (i64.const 4849591923046585232)
                       )
                      )
                      (br_if $label$27
                       (i64.ne
                        (get_local $2)
                        (i64.const 4849591923046648832)
                       )
                      )
                      (i32.store offset=228
                       (get_local $9)
                       (i32.const 0)
                      )
                      (i32.store offset=224
                       (get_local $9)
                       (i32.const 5)
                      )
                      (i64.store offset=152 align=4
                       (get_local $9)
                       (i64.load offset=224
                        (get_local $9)
                       )
                      )
                      (drop
                       (call $_ZN5eosio14execute_actionI3petS1_JtEEEbPT_MT0_FvDpT1_E
                        (i32.add
                         (get_local $9)
                         (i32.const 376)
                        )
                        (i32.add
                         (get_local $9)
                         (i32.const 152)
                        )
                       )
                      )
                      (br $label$27)
                     )
                     (br_if $label$32
                      (i64.eq
                       (get_local $2)
                       (i64.const 4157834736711286784)
                      )
                     )
                     (br_if $label$31
                      (i64.eq
                       (get_local $2)
                       (i64.const 4157834737613198336)
                      )
                     )
                     (br_if $label$27
                      (i64.ne
                       (get_local $2)
                       (i64.const 4157834741376963984)
                      )
                     )
                     (i32.store offset=292
                      (get_local $9)
                      (i32.const 0)
                     )
                     (i32.store offset=288
                      (get_local $9)
                      (i32.const 6)
                     )
                     (i64.store offset=88 align=4
                      (get_local $9)
                      (i64.load offset=288
                       (get_local $9)
                      )
                     )
                     (drop
                      (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_yEEEbPT_MT0_FvDpT1_E
                       (i32.add
                        (get_local $9)
                        (i32.const 376)
                       )
                       (i32.add
                        (get_local $9)
                        (i32.const 88)
                       )
                      )
                     )
                     (br $label$27)
                    )
                    (br_if $label$30
                     (i64.eq
                      (get_local $2)
                      (i64.const 6527011819733647360)
                     )
                    )
                    (br_if $label$29
                     (i64.eq
                      (get_local $2)
                      (i64.const 5382254363804057600)
                     )
                    )
                    (br_if $label$27
                     (i64.ne
                      (get_local $2)
                      (i64.const 5031766163945160704)
                     )
                    )
                    (i32.store offset=372
                     (get_local $9)
                     (i32.const 0)
                    )
                    (i32.store offset=368
                     (get_local $9)
                     (i32.const 7)
                    )
                    (i64.store offset=8 align=4
                     (get_local $9)
                     (i64.load offset=368
                      (get_local $9)
                     )
                    )
                    (drop
                     (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
                      (i32.add
                       (get_local $9)
                       (i32.const 376)
                      )
                      (i32.add
                       (get_local $9)
                       (i32.const 8)
                      )
                     )
                    )
                    (br $label$27)
                   )
                   (br_if $label$28
                    (i64.eq
                     (get_local $2)
                     (i64.const -3617168760277827584)
                    )
                   )
                   (br_if $label$27
                    (i64.ne
                     (get_local $2)
                     (i64.const -3075276115275153408)
                    )
                   )
                   (i32.store offset=364
                    (get_local $9)
                    (i32.const 0)
                   )
                   (i32.store offset=360
                    (get_local $9)
                    (i32.const 8)
                   )
                   (i64.store offset=16 align=4
                    (get_local $9)
                    (i64.load offset=360
                     (get_local $9)
                    )
                   )
                   (drop
                    (call $_ZN5eosio14execute_actionI3petS1_JyEEEbPT_MT0_FvDpT1_E
                     (i32.add
                      (get_local $9)
                      (i32.const 376)
                     )
                     (i32.add
                      (get_local $9)
                      (i32.const 16)
                     )
                    )
                   )
                   (br $label$27)
                  )
                  (i32.store offset=300
                   (get_local $9)
                   (i32.const 0)
                  )
                  (i32.store offset=296
                   (get_local $9)
                   (i32.const 9)
                  )
                  (i64.store offset=80 align=4
                   (get_local $9)
                   (i64.load offset=296
                    (get_local $9)
                   )
                  )
                  (drop
                   (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_11checksum256EEEbPT_MT0_FvDpT1_E
                    (i32.add
                     (get_local $9)
                     (i32.const 376)
                    )
                    (i32.add
                     (get_local $9)
                     (i32.const 80)
                    )
                   )
                  )
                  (br $label$27)
                 )
                 (i32.store offset=348
                  (get_local $9)
                  (i32.const 0)
                 )
                 (i32.store offset=344
                  (get_local $9)
                  (i32.const 10)
                 )
                 (i64.store offset=32 align=4
                  (get_local $9)
                  (i64.load offset=344
                   (get_local $9)
                  )
                 )
                 (drop
                  (call $_ZN5eosio14execute_actionI3petS1_JyEEEbPT_MT0_FvDpT1_E
                   (i32.add
                    (get_local $9)
                    (i32.const 376)
                   )
                   (i32.add
                    (get_local $9)
                    (i32.const 32)
                   )
                  )
                 )
                 (br $label$27)
                )
                (i32.store offset=284
                 (get_local $9)
                 (i32.const 0)
                )
                (i32.store offset=280
                 (get_local $9)
                 (i32.const 11)
                )
                (i64.store offset=96 align=4
                 (get_local $9)
                 (i64.load offset=280
                  (get_local $9)
                 )
                )
                (drop
                 (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_yyhEEEbPT_MT0_FvDpT1_E
                  (i32.add
                   (get_local $9)
                   (i32.const 376)
                  )
                  (i32.add
                   (get_local $9)
                   (i32.const 96)
                  )
                 )
                )
                (br $label$27)
               )
               (i32.store offset=324
                (get_local $9)
                (i32.const 0)
               )
               (i32.store offset=320
                (get_local $9)
                (i32.const 12)
               )
               (i64.store offset=56 align=4
                (get_local $9)
                (i64.load offset=320
                 (get_local $9)
                )
               )
               (drop
                (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameEh11checksum256EEEbPT_MT0_FvDpT1_E
                 (i32.add
                  (get_local $9)
                  (i32.const 376)
                 )
                 (i32.add
                  (get_local $9)
                  (i32.const 56)
                 )
                )
               )
               (br $label$27)
              )
              (i32.store offset=236
               (get_local $9)
               (i32.const 0)
              )
              (i32.store offset=232
               (get_local $9)
               (i32.const 13)
              )
              (i64.store offset=144 align=4
               (get_local $9)
               (i64.load offset=232
                (get_local $9)
               )
              )
              (drop
               (call $_ZN5eosio14execute_actionI3petS1_JmEEEbPT_MT0_FvDpT1_E
                (i32.add
                 (get_local $9)
                 (i32.const 376)
                )
                (i32.add
                 (get_local $9)
                 (i32.const 144)
                )
               )
              )
              (br $label$27)
             )
             (i32.store offset=260
              (get_local $9)
              (i32.const 0)
             )
             (i32.store offset=256
              (get_local $9)
              (i32.const 14)
             )
             (i64.store offset=120 align=4
              (get_local $9)
              (i64.load offset=256
               (get_local $9)
              )
             )
             (drop
              (call $_ZN5eosio14execute_actionI3petS1_JyNSt3__16vectorIhNS2_9allocatorIhEEEEEEEbPT_MT0_FvDpT1_E
               (i32.add
                (get_local $9)
                (i32.const 376)
               )
               (i32.add
                (get_local $9)
                (i32.const 120)
               )
              )
             )
             (br $label$27)
            )
            (i32.store offset=268
             (get_local $9)
             (i32.const 0)
            )
            (i32.store offset=264
             (get_local $9)
             (i32.const 15)
            )
            (i64.store offset=112 align=4
             (get_local $9)
             (i64.load offset=264
              (get_local $9)
             )
            )
            (drop
             (call $_ZN5eosio14execute_actionI3petS1_JNSt3__16vectorIhNS2_9allocatorIhEEEEEEEbPT_MT0_FvDpT1_E
              (i32.add
               (get_local $9)
               (i32.const 376)
              )
              (i32.add
               (get_local $9)
               (i32.const 112)
              )
             )
            )
            (br $label$27)
           )
           (i32.store offset=252
            (get_local $9)
            (i32.const 0)
           )
           (i32.store offset=248
            (get_local $9)
            (i32.const 16)
           )
           (i64.store offset=128 align=4
            (get_local $9)
            (i64.load offset=248
             (get_local $9)
            )
           )
           (drop
            (call $_ZN5eosio14execute_actionI3petS1_JNSt3__16vectorIhNS2_9allocatorIhEEEEEEEbPT_MT0_FvDpT1_E
             (i32.add
              (get_local $9)
              (i32.const 376)
             )
             (i32.add
              (get_local $9)
              (i32.const 128)
             )
            )
           )
           (br $label$27)
          )
          (i32.store offset=212
           (get_local $9)
           (i32.const 0)
          )
          (i32.store offset=208
           (get_local $9)
           (i32.const 17)
          )
          (i64.store offset=168 align=4
           (get_local $9)
           (i64.load offset=208
            (get_local $9)
           )
          )
          (drop
           (call $_ZN5eosio14execute_actionI3petS1_JhEEEbPT_MT0_FvDpT1_E
            (i32.add
             (get_local $9)
             (i32.const 376)
            )
            (i32.add
             (get_local $9)
             (i32.const 168)
            )
           )
          )
          (br $label$27)
         )
         (i32.store offset=220
          (get_local $9)
          (i32.const 0)
         )
         (i32.store offset=216
          (get_local $9)
          (i32.const 18)
         )
         (i64.store offset=160 align=4
          (get_local $9)
          (i64.load offset=216
           (get_local $9)
          )
         )
         (drop
          (call $_ZN5eosio14execute_actionI3petS1_JmEEEbPT_MT0_FvDpT1_E
           (i32.add
            (get_local $9)
            (i32.const 376)
           )
           (i32.add
            (get_local $9)
            (i32.const 160)
           )
          )
         )
         (br $label$27)
        )
        (i32.store offset=316
         (get_local $9)
         (i32.const 0)
        )
        (i32.store offset=312
         (get_local $9)
         (i32.const 19)
        )
        (i64.store offset=64 align=4
         (get_local $9)
         (i64.load offset=312
          (get_local $9)
         )
        )
        (drop
         (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_11checksum256EEEbPT_MT0_FvDpT1_E
          (i32.add
           (get_local $9)
           (i32.const 376)
          )
          (i32.add
           (get_local $9)
           (i32.const 64)
          )
         )
        )
        (br $label$27)
       )
       (i32.store offset=308
        (get_local $9)
        (i32.const 0)
       )
       (i32.store offset=304
        (get_local $9)
        (i32.const 20)
       )
       (i64.store offset=72 align=4
        (get_local $9)
        (i64.load offset=304
         (get_local $9)
        )
       )
       (drop
        (call $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_EEEbPT_MT0_FvDpT1_E
         (i32.add
          (get_local $9)
          (i32.const 376)
         )
         (i32.add
          (get_local $9)
          (i32.const 72)
         )
        )
       )
       (br $label$27)
      )
      (i32.store offset=356
       (get_local $9)
       (i32.const 0)
      )
      (i32.store offset=352
       (get_local $9)
       (i32.const 21)
      )
      (i64.store offset=24 align=4
       (get_local $9)
       (i64.load offset=352
        (get_local $9)
       )
      )
      (drop
       (call $_ZN5eosio14execute_actionI3petS1_JyEEEbPT_MT0_FvDpT1_E
        (i32.add
         (get_local $9)
         (i32.const 376)
        )
        (i32.add
         (get_local $9)
         (i32.const 24)
        )
       )
      )
      (br $label$27)
     )
     (i32.store offset=332
      (get_local $9)
      (i32.const 0)
     )
     (i32.store offset=328
      (get_local $9)
      (i32.const 22)
     )
     (i64.store offset=48 align=4
      (get_local $9)
      (i64.load offset=328
       (get_local $9)
      )
     )
     (drop
      (call $_ZN5eosio14execute_actionI3petS1_JyEEEbPT_MT0_FvDpT1_E
       (i32.add
        (get_local $9)
        (i32.const 376)
       )
       (i32.add
        (get_local $9)
        (i32.const 48)
       )
      )
     )
     (br $label$27)
    )
    (i32.store offset=196
     (get_local $9)
     (i32.const 0)
    )
    (i32.store offset=192
     (get_local $9)
     (i32.const 23)
    )
    (i64.store offset=184 align=4
     (get_local $9)
     (i64.load offset=192
      (get_local $9)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI3petS1_JyyEEEbPT_MT0_FvDpT1_E
      (i32.add
       (get_local $9)
       (i32.const 376)
      )
      (i32.add
       (get_local $9)
       (i32.const 184)
      )
     )
    )
   )
   (drop
    (call $_ZN3petD2Ev
     (i32.add
      (get_local $9)
      (i32.const 376)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 624)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI3petS1_JNS_4nameENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=44
   (tee_local $2
    (get_local $3)
   )
   (get_local $0)
  )
  (i32.store offset=32
   (get_local $2)
   (i32.load
    (get_local $1)
   )
  )
  (i32.store offset=36
   (get_local $2)
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $0
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $0)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $0)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $3)
       (i32.and
        (i32.add
         (get_local $0)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $2)
   (i64.const 0)
  )
  (i32.store offset=56
   (get_local $2)
   (i32.add
    (get_local $1)
    (get_local $0)
   )
  )
  (i32.store offset=48
   (get_local $2)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $0)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=52
   (get_local $2)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 48)
    )
    (i32.add
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $0)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (i32.store offset=52
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 32)
   )
  )
  (i32.store offset=48
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 44)
   )
  )
  (call $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI3petS5_JNS3_4nameENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJS6_SD_EEEJLj0ELj1EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
   (i32.add
    (get_local $2)
    (i32.const 48)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 24)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 64)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $4
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $4
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $4)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $4)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $6)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (set_local $3
   (i64.load offset=8
    (get_local $6)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $4)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $5)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vij)
   (get_local $1)
   (get_local $3)
   (get_local $5)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JNS_4nameEh11checksum256EEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $7
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $8)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $5
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $5
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $5)
     (get_local $3)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $7)
    (i32.const 72)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.const 32)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (i32.const 24)
   )
   (i64.const 0)
  )
  (i32.store8 offset=40
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $7)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $3)
    (i32.const 8)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $7)
      (i32.const 32)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
    (i32.const 1)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.add
     (get_local $3)
     (i32.const -9)
    )
    (i32.const 31)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $1
     (i32.add
      (i32.add
       (get_local $7)
       (i32.const 32)
      )
      (i32.const 16)
     )
    )
    (i32.add
     (get_local $5)
     (i32.const 9)
    )
    (i32.const 32)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $5)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 28)
    )
   )
  )
  (i32.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 80)
     )
     (i32.const 24)
    )
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 80)
     )
     (i32.const 16)
    )
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.load offset=32
    (get_local $7)
   )
  )
  (i32.store offset=80
   (get_local $7)
   (i32.load
    (get_local $1)
   )
  )
  (i32.store offset=92
   (get_local $7)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=88
   (get_local $7)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=84
   (get_local $7)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
   )
  )
  (set_local $8
   (i32.load8_u offset=40
    (get_local $7)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 112)
    )
    (i32.const 24)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 112)
    )
    (i32.const 16)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=120
   (get_local $7)
   (i64.load offset=88
    (get_local $7)
   )
  )
  (i64.store offset=112
   (get_local $7)
   (i64.load offset=80
    (get_local $7)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $6)
     )
    )
   )
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 144)
     )
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 112)
     )
     (i32.const 24)
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 144)
     )
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 112)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=152
   (get_local $7)
   (i64.load offset=120
    (get_local $7)
   )
  )
  (i64.store offset=144
   (get_local $7)
   (i64.load offset=112
    (get_local $7)
   )
  )
  (i64.store
   (i32.add
    (get_local $7)
    (i32.const 24)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store
   (get_local $7)
   (i64.load offset=144
    (get_local $7)
   )
  )
  (i64.store offset=8
   (get_local $7)
   (i64.load offset=152
    (get_local $7)
   )
  )
  (call_indirect (type $FUNCSIG$vijii)
   (get_local $1)
   (get_local $4)
   (i32.and
    (get_local $8)
    (i32.const 255)
   )
   (get_local $7)
   (get_local $6)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 176)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_11checksum256EEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $8
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $7
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $3
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $3)
        (i32.const 513)
       )
      )
      (set_local $6
       (call $malloc
        (get_local $3)
       )
      )
      (br $label$1)
     )
     (set_local $6
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $6)
     (get_local $3)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $8)
    (i32.const 72)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.const 32)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.const 24)
   )
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $8)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.and
     (get_local $3)
     (i32.const -8)
    )
    (i32.const 8)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.add
     (get_local $3)
     (i32.const -16)
    )
    (i32.const 31)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $1
     (i32.add
      (i32.add
       (get_local $8)
       (i32.const 32)
      )
      (i32.const 16)
     )
    )
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $6)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 80)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 28)
    )
   )
  )
  (i32.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 80)
     )
     (i32.const 24)
    )
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 80)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (tee_local $6
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 80)
     )
     (i32.const 16)
    )
   )
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.load offset=32
    (get_local $8)
   )
  )
  (i32.store offset=80
   (get_local $8)
   (i32.load
    (get_local $1)
   )
  )
  (i32.store offset=92
   (get_local $8)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=88
   (get_local $8)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=84
   (get_local $8)
   (i32.load
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
   )
  )
  (set_local $5
   (i64.load offset=40
    (get_local $8)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 112)
    )
    (i32.const 24)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $8)
     (i32.const 112)
    )
    (i32.const 16)
   )
   (i64.load
    (get_local $6)
   )
  )
  (i64.store offset=120
   (get_local $8)
   (i64.load offset=88
    (get_local $8)
   )
  )
  (i64.store offset=112
   (get_local $8)
   (i64.load offset=80
    (get_local $8)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $7
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $7)
     )
    )
   )
  )
  (i64.store
   (tee_local $3
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 144)
     )
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 112)
     )
     (i32.const 24)
    )
   )
  )
  (i64.store
   (tee_local $6
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 144)
     )
     (i32.const 16)
    )
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $8)
      (i32.const 112)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=152
   (get_local $8)
   (i64.load offset=120
    (get_local $8)
   )
  )
  (i64.store offset=144
   (get_local $8)
   (i64.load offset=112
    (get_local $8)
   )
  )
  (i64.store
   (i32.add
    (get_local $8)
    (i32.const 24)
   )
   (i64.load
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
   (i64.load
    (get_local $6)
   )
  )
  (i64.store
   (get_local $8)
   (i64.load offset=144
    (get_local $8)
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.load offset=152
    (get_local $8)
   )
  )
  (call_indirect (type $FUNCSIG$vijji)
   (get_local $1)
   (get_local $4)
   (get_local $5)
   (get_local $8)
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_EEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $8
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $7
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $6
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $6
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $6)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.const 0)
  )
  (i64.store
   (get_local $8)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.and
     (get_local $1)
     (i32.const -8)
    )
    (i32.const 8)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $5
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $6)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $5)
   )
  )
  (set_local $3
   (i64.load
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $7
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $7)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijj)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_yEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $10
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $8)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $9
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $8
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $8
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $8
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $8)
     (get_local $1)
    )
   )
  )
  (i64.store offset=16
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $10)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $10)
     (i32.const 8)
    )
    (get_local $8)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (tee_local $6
     (i32.and
      (get_local $1)
      (i32.const -8)
     )
    )
    (i32.const 8)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $7
     (i32.add
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 16)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $6
     (i32.add
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
      (i32.const 16)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $8)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $6)
   )
  )
  (set_local $4
   (i64.load
    (get_local $7)
   )
  )
  (set_local $3
   (i64.load offset=8
    (get_local $10)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $9
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $9)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijjj)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (get_local $5)
   (get_local $9)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JNS_4nameES2_yyhEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $9
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $10)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $10)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (i64.store offset=16
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $9)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $9)
   (i64.const 0)
  )
  (i32.store8 offset=40
   (get_local $9)
   (i32.const 0)
  )
  (i32.store offset=52
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=48
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=56
   (get_local $9)
   (i32.add
    (get_local $1)
    (get_local $3)
   )
  )
  (i32.store offset=64
   (get_local $9)
   (i32.add
    (get_local $9)
    (i32.const 48)
   )
  )
  (i32.store offset=72
   (get_local $9)
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJN5eosio4nameES9_yyhEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJS9_S9_yyhEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_
   (i32.add
    (get_local $9)
    (i32.const 72)
   )
   (i32.add
    (get_local $9)
    (i32.const 64)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.load8_u
    (i32.add
     (get_local $9)
     (i32.const 40)
    )
   )
  )
  (set_local $7
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 32)
    )
   )
  )
  (set_local $6
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.load offset=8
    (get_local $9)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $8
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $8)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijjjji)
   (get_local $1)
   (get_local $4)
   (get_local $5)
   (get_local $6)
   (get_local $7)
   (i32.and
    (get_local $3)
    (i32.const 255)
   )
   (get_local $8)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 80)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JNSt3__16vectorIhNS2_9allocatorIhEEEEEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $4)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (i32.store offset=8
   (get_local $6)
   (i32.const 0)
  )
  (i64.store
   (get_local $6)
   (i64.const 0)
  )
  (i32.store offset=36
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $6)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $6)
   (i32.add
    (get_local $1)
    (get_local $3)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
    (get_local $6)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (i64.store offset=16
   (get_local $6)
   (i64.const 0)
  )
  (set_local $1
   (i32.const 0)
  )
  (i32.store offset=24
   (get_local $6)
   (i32.const 0)
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (tee_local $3
        (i32.sub
         (i32.load offset=4
          (get_local $6)
         )
         (i32.load
          (get_local $6)
         )
        )
       )
      )
     )
     (br_if $label$5
      (i32.le_s
       (get_local $3)
       (i32.const -1)
      )
     )
     (i32.store
      (i32.add
       (get_local $6)
       (i32.const 24)
      )
      (i32.add
       (tee_local $1
        (call $_Znwj
         (get_local $3)
        )
       )
       (get_local $3)
      )
     )
     (i32.store offset=16
      (get_local $6)
      (get_local $1)
     )
     (i32.store offset=20
      (get_local $6)
      (get_local $1)
     )
     (br_if $label$6
      (i32.lt_s
       (tee_local $3
        (i32.sub
         (i32.load offset=4
          (get_local $6)
         )
         (tee_local $4
          (i32.load
           (get_local $6)
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $4)
       (get_local $3)
      )
     )
     (i32.store offset=20
      (get_local $6)
      (tee_local $1
       (i32.add
        (i32.load offset=20
         (get_local $6)
        )
        (get_local $3)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $0)
      (i32.shr_s
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (i32.and
        (get_local $2)
        (i32.const 1)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (i32.load
         (get_local $4)
        )
        (get_local $5)
       )
      )
     )
    )
    (i64.store offset=32
     (get_local $6)
     (i64.const 0)
    )
    (i32.store offset=40
     (get_local $6)
     (i32.const 0)
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (tee_local $1
        (i32.sub
         (get_local $1)
         (i32.load offset=16
          (get_local $6)
         )
        )
       )
      )
     )
     (br_if $label$4
      (i32.le_s
       (get_local $1)
       (i32.const -1)
      )
     )
     (i32.store
      (i32.add
       (get_local $6)
       (i32.const 40)
      )
      (i32.add
       (tee_local $3
        (call $_Znwj
         (get_local $1)
        )
       )
       (get_local $1)
      )
     )
     (i32.store offset=32
      (get_local $6)
      (get_local $3)
     )
     (i32.store offset=36
      (get_local $6)
      (get_local $3)
     )
     (br_if $label$8
      (i32.lt_s
       (tee_local $1
        (i32.sub
         (i32.load offset=20
          (get_local $6)
         )
         (tee_local $2
          (i32.load offset=16
           (get_local $6)
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $3)
       (get_local $2)
       (get_local $1)
      )
     )
     (i32.store offset=36
      (get_local $6)
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (call_indirect (type $FUNCSIG$vii)
     (get_local $4)
     (i32.add
      (get_local $6)
      (i32.const 32)
     )
     (get_local $5)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (tee_local $1
        (i32.load offset=32
         (get_local $6)
        )
       )
      )
     )
     (i32.store offset=36
      (get_local $6)
      (get_local $1)
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (tee_local $1
        (i32.load offset=16
         (get_local $6)
        )
       )
      )
     )
     (i32.store offset=20
      (get_local $6)
      (get_local $1)
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (tee_local $1
        (i32.load
         (get_local $6)
        )
       )
      )
     )
     (i32.store offset=4
      (get_local $6)
      (get_local $1)
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (i32.store offset=4
     (i32.const 0)
     (i32.add
      (get_local $6)
      (i32.const 48)
     )
    )
    (return
     (i32.const 1)
    )
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (unreachable)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
  )
  (unreachable)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JyNSt3__16vectorIhNS2_9allocatorIhEEEEEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $7
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $5)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $5)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (i32.store offset=56
   (get_local $7)
   (i32.add
    (get_local $1)
    (get_local $3)
   )
  )
  (i32.store offset=48
   (get_local $7)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=52
   (get_local $7)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEhEERT_S6_RNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
    (i32.add
     (get_local $7)
     (i32.const 48)
    )
    (tee_local $5
     (i32.add
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (i32.store offset=40
   (get_local $7)
   (i32.const 0)
  )
  (set_local $4
   (i64.load offset=8
    (get_local $7)
   )
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const 0)
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (tee_local $3
        (i32.sub
         (i32.load
          (i32.add
           (get_local $7)
           (i32.const 20)
          )
         )
         (i32.load
          (get_local $5)
         )
        )
       )
      )
     )
     (br_if $label$5
      (i32.le_s
       (get_local $3)
       (i32.const -1)
      )
     )
     (i32.store
      (i32.add
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
       (i32.const 8)
      )
      (i32.add
       (tee_local $1
        (call $_Znwj
         (get_local $3)
        )
       )
       (get_local $3)
      )
     )
     (i32.store offset=32
      (get_local $7)
      (get_local $1)
     )
     (i32.store offset=36
      (get_local $7)
      (get_local $1)
     )
     (br_if $label$6
      (i32.lt_s
       (tee_local $3
        (i32.sub
         (i32.load
          (i32.add
           (get_local $7)
           (i32.const 20)
          )
         )
         (tee_local $5
          (i32.load
           (i32.add
            (i32.add
             (get_local $7)
             (i32.const 8)
            )
            (i32.const 8)
           )
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $5)
       (get_local $3)
      )
     )
     (i32.store offset=36
      (get_local $7)
      (tee_local $1
       (i32.add
        (i32.load offset=36
         (get_local $7)
        )
        (get_local $3)
       )
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $0)
      (i32.shr_s
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (i32.and
        (get_local $2)
        (i32.const 1)
       )
      )
     )
     (set_local $6
      (i32.load
       (i32.add
        (i32.load
         (get_local $5)
        )
        (get_local $6)
       )
      )
     )
    )
    (i64.store offset=48
     (get_local $7)
     (i64.const 0)
    )
    (i32.store offset=56
     (get_local $7)
     (i32.const 0)
    )
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (tee_local $1
        (i32.sub
         (get_local $1)
         (i32.load offset=32
          (get_local $7)
         )
        )
       )
      )
     )
     (br_if $label$4
      (i32.le_s
       (get_local $1)
       (i32.const -1)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 56)
      )
      (i32.add
       (tee_local $3
        (call $_Znwj
         (get_local $1)
        )
       )
       (get_local $1)
      )
     )
     (i32.store offset=48
      (get_local $7)
      (get_local $3)
     )
     (i32.store offset=52
      (get_local $7)
      (get_local $3)
     )
     (br_if $label$8
      (i32.lt_s
       (tee_local $1
        (i32.sub
         (i32.load offset=36
          (get_local $7)
         )
         (tee_local $2
          (i32.load offset=32
           (get_local $7)
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $3)
       (get_local $2)
       (get_local $1)
      )
     )
     (i32.store offset=52
      (get_local $7)
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
    )
    (call_indirect (type $FUNCSIG$viji)
     (get_local $5)
     (get_local $4)
     (i32.add
      (get_local $7)
      (i32.const 48)
     )
     (get_local $6)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (tee_local $1
        (i32.load offset=48
         (get_local $7)
        )
       )
      )
     )
     (i32.store offset=52
      (get_local $7)
      (get_local $1)
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (tee_local $1
        (i32.load offset=32
         (get_local $7)
        )
       )
      )
     )
     (i32.store offset=36
      (get_local $7)
      (get_local $1)
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.eqz
       (tee_local $1
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const 16)
         )
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 20)
      )
      (get_local $1)
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (i32.store offset=4
     (i32.const 0)
     (i32.add
      (get_local $7)
      (i32.const 64)
     )
    )
    (return
     (i32.const 1)
    )
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (unreachable)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (unreachable)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JmEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $1
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $1)
       (i32.const 513)
      )
     )
     (set_local $3
      (call $malloc
       (get_local $1)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $3
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $3)
     (get_local $1)
    )
   )
  )
  (i32.store offset=8
   (get_local $5)
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 3)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (set_local $6
   (i32.load offset=8
    (get_local $5)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $3)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $4
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $4)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vii)
   (get_local $1)
   (get_local $6)
   (get_local $4)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JtEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $1
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $1)
       (i32.const 513)
      )
     )
     (set_local $3
      (call $malloc
       (get_local $1)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $3
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $3)
     (get_local $1)
    )
   )
  )
  (i32.store16 offset=8
   (get_local $5)
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 1)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
    (get_local $3)
    (i32.const 2)
   )
  )
  (set_local $6
   (i32.load16_u offset=8
    (get_local $5)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $3)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $4
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $4)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vii)
   (get_local $1)
   (i32.and
    (get_local $6)
    (i32.const 65535)
   )
   (get_local $4)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JhEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $1
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $1)
       (i32.const 513)
      )
     )
     (set_local $3
      (call $malloc
       (get_local $1)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $3
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $3)
     (get_local $1)
    )
   )
  )
  (i32.store8 offset=8
   (get_local $5)
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.ne
    (get_local $1)
    (i32.const 0)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
    (get_local $3)
    (i32.const 1)
   )
  )
  (set_local $6
   (i32.load8_u offset=8
    (get_local $5)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $3)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $4
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $4)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vii)
   (get_local $1)
   (i32.and
    (get_local $6)
    (i32.const 255)
   )
   (get_local $4)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI3petS1_JyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $8
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $7
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $6
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $6
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $6)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.const 0)
  )
  (i64.store
   (get_local $8)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.and
     (get_local $1)
     (i32.const -8)
    )
    (i32.const 8)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (tee_local $5
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $6)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $5)
   )
  )
  (set_local $3
   (i64.load
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $7
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $7)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijj)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN3petD2Ev (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 232)
       )
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 236)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$3
      (set_local $2
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $3)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 232)
       )
      )
     )
     (br $label$1)
    )
    (set_local $5
     (get_local $3)
    )
   )
   (i32.store
    (get_local $1)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 192)
       )
      )
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 196)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$8
      (set_local $2
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$9
       (br_if $label$9
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $3)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 192)
       )
      )
     )
     (br $label$6)
    )
    (set_local $5
     (get_local $3)
    )
   )
   (i32.store
    (get_local $1)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 152)
       )
      )
     )
    )
   )
   (block $label$11
    (block $label$12
     (br_if $label$12
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 156)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$13
      (set_local $2
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$14
       (br_if $label$14
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$13
       (i32.ne
        (get_local $3)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 152)
       )
      )
     )
     (br $label$11)
    )
    (set_local $5
     (get_local $3)
    )
   )
   (i32.store
    (get_local $1)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$15
   (br_if $label$15
    (i32.eqz
     (tee_local $3
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
    )
   )
   (block $label$16
    (block $label$17
     (br_if $label$17
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 116)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$18
      (set_local $2
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$19
       (br_if $label$19
        (i32.eqz
         (get_local $2)
        )
       )
       (block $label$20
        (br_if $label$20
         (i32.eqz
          (i32.and
           (i32.load8_u offset=16
            (get_local $2)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 24)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$18
       (i32.ne
        (get_local $3)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 112)
       )
      )
     )
     (br $label$16)
    )
    (set_local $5
     (get_local $3)
    )
   )
   (i32.store
    (get_local $1)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$21
   (br_if $label$21
    (i32.eqz
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 72)
       )
      )
     )
    )
   )
   (block $label$22
    (block $label$23
     (br_if $label$23
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $0)
           (i32.const 76)
          )
         )
        )
       )
       (get_local $1)
      )
     )
     (loop $label$24
      (set_local $2
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$25
       (br_if $label$25
        (i32.eqz
         (get_local $2)
        )
       )
       (block $label$26
        (br_if $label$26
         (i32.eqz
          (tee_local $3
           (i32.load offset=8
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 12)
         )
         (get_local $3)
        )
        (call $_ZdlPv
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$24
       (i32.ne
        (get_local $1)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 72)
       )
      )
     )
     (br $label$22)
    )
    (set_local $5
     (get_local $1)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $1)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (block $label$27
   (br_if $label$27
    (i32.eqz
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 32)
       )
      )
     )
    )
   )
   (block $label$28
    (block $label$29
     (br_if $label$29
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $0)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $1)
      )
     )
     (loop $label$30
      (set_local $2
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$31
       (br_if $label$31
        (i32.eqz
         (get_local $2)
        )
       )
       (block $label$32
        (br_if $label$32
         (i32.eqz
          (tee_local $3
           (i32.load offset=8
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $2)
          (i32.const 12)
         )
         (get_local $3)
        )
        (call $_ZdlPv
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$30
       (i32.ne
        (get_local $1)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 32)
       )
      )
     )
     (br $label$28)
    )
    (set_local $5
     (get_local $1)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $1)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi5EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJN5eosio4nameES9_yyhEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJS9_S9_yyhEEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $2)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $1
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $1)
    )
   )
   (i32.const 512)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $2)
     (i32.const 32)
    )
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 1)
   )
  )
 )
 (func $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI3petS5_JNS3_4nameENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS7_5tupleIJS6_SD_EEEJLj0ELj1EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $2
   (i64.load
    (get_local $1)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (get_local $4)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $1
   (i32.add
    (i32.load
     (i32.load
      (get_local $0)
     )
    )
    (i32.shr_s
     (tee_local $3
      (i32.load offset=4
       (tee_local $0
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (set_local $0
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $0)
     )
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (get_local $4)
   )
  )
  (call_indirect (type $FUNCSIG$viji)
   (get_local $1)
   (get_local $2)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
   (get_local $0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=24
     (get_local $4)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (i32.load8_u
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=8
     (get_local $4)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
  )
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 3196)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 11600)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=11686
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=11688
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=11686
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=11688
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=11688
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=11688
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=11686
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=11686
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=11688
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=11688
        (i32.const 0)
       )
      )
     )
     (i32.store offset=11688
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=11580
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 11388)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 11388)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=11692
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (set_local $2
       (select
        (i32.load offset=4
         (get_local $1)
        )
        (i32.shr_u
         (tee_local $2
          (i32.load8_u
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        (tee_local $4
         (i32.and
          (get_local $2)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $5
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.load offset=8
        (get_local $1)
       )
      )
      (set_local $1
       (i32.const 10)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (i32.and
          (tee_local $3
           (i32.load8_u
            (get_local $0)
           )
          )
          (i32.const 1)
         )
        )
       )
       (set_local $1
        (i32.add
         (i32.and
          (tee_local $3
           (i32.load
            (get_local $0)
           )
          )
          (i32.const -2)
         )
         (i32.const -1)
        )
       )
      )
      (set_local $5
       (select
        (get_local $6)
        (get_local $5)
        (get_local $4)
       )
      )
      (set_local $4
       (i32.and
        (get_local $3)
        (i32.const 1)
       )
      )
      (block $label$5
       (block $label$6
        (block $label$7
         (br_if $label$7
          (i32.le_u
           (get_local $2)
           (get_local $1)
          )
         )
         (br_if $label$6
          (get_local $4)
         )
         (set_local $3
          (i32.shr_u
           (i32.and
            (get_local $3)
            (i32.const 254)
           )
           (i32.const 1)
          )
         )
         (br $label$5)
        )
        (br_if $label$2
         (get_local $4)
        )
        (set_local $1
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (br_if $label$1
         (get_local $2)
        )
        (br $label$0)
       )
       (set_local $3
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
      (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
       (get_local $0)
       (get_local $1)
       (i32.sub
        (get_local $2)
        (get_local $1)
       )
       (get_local $3)
       (i32.const 0)
       (get_local $3)
       (get_local $2)
       (get_local $5)
      )
     )
     (return
      (get_local $0)
     )
    )
    (set_local $1
     (i32.load offset=8
      (get_local $0)
     )
    )
    (br_if $label$0
     (i32.eqz
      (get_local $2)
     )
    )
   )
   (drop
    (call $memmove
     (get_local $1)
     (get_local $5)
     (get_local $2)
    )
   )
  )
  (i32.store8
   (i32.add
    (get_local $1)
    (get_local $2)
   )
   (i32.const 0)
  )
  (block $label$8
   (br_if $label$8
    (i32.and
     (i32.load8_u
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (i32.store8
    (get_local $0)
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (i32.sub
      (i32.const -18)
      (get_local $1)
     )
     (get_local $2)
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.and
       (i32.load8_u
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $9
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$1)
    )
    (set_local $9
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (set_local $10
    (i32.const -17)
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_u
      (get_local $1)
      (i32.const 2147483622)
     )
    )
    (set_local $10
     (i32.const 11)
    )
    (br_if $label$3
     (i32.lt_u
      (tee_local $2
       (select
        (tee_local $8
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (tee_local $2
         (i32.add
          (get_local $2)
          (get_local $1)
         )
        )
        (i32.lt_u
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $10
     (i32.and
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
      (i32.const -16)
     )
    )
   )
   (set_local $2
    (call $_Znwj
     (get_local $10)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $4)
     )
    )
    (drop
     (call $memcpy
      (get_local $2)
      (get_local $9)
      (get_local $4)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (get_local $6)
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $2)
       (get_local $4)
      )
      (get_local $7)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $7
       (i32.sub
        (tee_local $3
         (i32.sub
          (get_local $3)
          (get_local $5)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (i32.add
        (get_local $2)
        (get_local $4)
       )
       (get_local $6)
      )
      (i32.add
       (i32.add
        (get_local $9)
        (get_local $4)
       )
       (get_local $5)
      )
      (get_local $7)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eq
      (get_local $1)
      (i32.const 10)
     )
    )
    (call $_ZdlPv
     (get_local $9)
    )
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (get_local $10)
     (i32.const 1)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (tee_local $4
     (i32.add
      (get_local $3)
      (get_local $6)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $2)
     (get_local $4)
    )
    (i32.const 0)
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $1)
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.const 10)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $2
     (i32.add
      (i32.and
       (tee_local $5
        (i32.load
         (get_local $0)
        )
       )
       (i32.const -2)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.shr_u
       (i32.and
        (get_local $5)
        (i32.const 254)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (set_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (tee_local $1
       (select
        (get_local $3)
        (get_local $1)
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
       (i32.const -16)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eq
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ne
        (get_local $4)
        (i32.const 10)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $1
      (call $_Znwj
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (get_local $4)
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.eqz
        (get_local $1)
       )
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.and
        (tee_local $5
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $7
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (set_local $7
      (i32.const 1)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.shr_u
        (i32.and
         (get_local $5)
         (i32.const 254)
        )
        (i32.const 1)
       )
      )
      (br $label$10)
     )
     (set_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eqz
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store
      (get_local $0)
      (i32.or
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (return)
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.and
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (i64.store align=4
    (get_local $0)
    (i64.load align=4
     (get_local $1)
    )
   )
   (i32.store
    (get_local $3)
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (return
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.ge_u
     (tee_local $3
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (get_local $3)
      )
      (br $label$2)
     )
     (set_local $1
      (call $_Znwj
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $1)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $isspace (param $0 i32) (result i32)
  (i32.or
   (i32.eq
    (get_local $0)
    (i32.const 32)
   )
   (i32.lt_u
    (i32.add
     (get_local $0)
     (i32.const -9)
    )
    (i32.const 5)
   )
  )
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
