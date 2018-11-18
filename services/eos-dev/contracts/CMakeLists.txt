cmake_minimum_required(VERSION 3.5)
project(monstereosio VERSION 0.4.0)

find_package(eosio.cdt)

add_contract(monstereosio monstereosio ${CMAKE_CURRENT_SOURCE_DIR}/monstereosio/src/monstereosio.cpp)
target_include_directories(monstereosio.wasm
   PUBLIC
   ${CMAKE_CURRENT_SOURCE_DIR}/monstereosio/include)

set_target_properties(monstereosio.wasm
   PROPERTIES
   RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}")