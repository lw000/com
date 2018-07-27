cmake_minimum_required(VERSION 2.8)

include_directories("${PROJECT_SOURCE_DIR}")

set(LOG4Z_SOURCE log4z.cpp 
    log4z_android_ios_ext.cpp)

add_library(log4z STATIC "${LOG4Z_SOURCE}")
