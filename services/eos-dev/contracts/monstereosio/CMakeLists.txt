add_executable(monstereosio.wasm
   ${CMAKE_CURRENT_SOURCE_DIR}/src/monstereosio.cpp
   )

target_compile_options(monstereosio.wasm PUBLIC --std=c++17 -fcolor-diagnostics)

target_include_directories(monstereosio.wasm
   PUBLIC
   ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(monstereosio.wasm
   PROPERTIES
   RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}")

configure_file("${CMAKE_CURRENT_SOURCE_DIR}/monstereosio.abi" "${CMAKE_CURRENT_BINARY_DIR}" COPYONLY)
