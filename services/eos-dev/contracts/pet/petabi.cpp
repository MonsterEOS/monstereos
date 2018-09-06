#include "pet.cpp"
// DO NOT include transferpet into the abi, as it is only for internal use.
EOSIO_ABI(pet, (createpet)(updatepet)(feedpet)(bedpet)(awakepet)(destroypet)(transferpet2)(battlecreate)(battlejoin)(battleleave)(battlestart)(battleattack)(battlefinish)(addelemttype)(changeelemtt)(addpettype)(changepettyp)(changecrtol)(changebatma)(changebatidt)(changebatami)(changebatama)(migrate)(transfer))
