cmake_minimum_required(VERSION 2.8)

include_directories("${PROJECT_SOURCE_DIR}/include")

set(JSONCPP_SOURCE ./src/json_reader.cpp
    ./src/json_value.cpp
    ./src/json_writer.cpp
    ./src/json_valueiterator.inl)

add_library(jsoncpp STATIC "${JSONCPP_SOURCE}")