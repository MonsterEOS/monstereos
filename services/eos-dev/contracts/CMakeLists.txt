cmake_minimum_required(VERSION 3.5)
project(monstereosio VERSION 0.4.0)

find_package(eosio.cdt)

# add_subdirectory(monstereosio)
# add_contract( pet monstereosion monstereosio.cpp )

# include_directories(AFTER ${BOOST_ROOT}/include)
add_subdirectory(monstereosio)

if (APPLE)
   set(OPENSSL_ROOT "/usr/local/opt/openssl")
elseif (UNIX)
   set(OPENSSL_ROOT "/usr/include/openssl")
endif()
set(SECP256K1_ROOT "/usr/local")

# include(UnitTestsExternalProject.txt)