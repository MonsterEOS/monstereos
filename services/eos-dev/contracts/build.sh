#! /bin/bash

printf "\t=========== Building monstereosio Smart Contract ===========\n\n"

RED='\033[0;31m'
NC='\033[0m'

CORES=`getconf _NPROCESSORS_ONLN`
rm -rf build
mkdir -p build
pushd build &> /dev/null
cmake ../
make -j${CORES}
popd &> /dev/null

cp build/monstereosio.wasm monstereosio/monstereosio.wasm