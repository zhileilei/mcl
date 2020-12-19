cmake_minimum_required(VERSION 3.5)

project(mcl)

if(PROJECT_BINARY_DIR STREQUAL PROJECT_SOURCE_DIR)
    message(
        FATAL_ERROR
        "In source build is forbiddend, please make a new fold, eg build to make project"
    )
endif()


option(ENABLE_TEST "enable test" OFF)

add_library(${PROJECT_NAME} INTERFACE)

target_include_directories(
    ${PROJECT_NAME} 
    INTERFACE
    ${PROJECT_SOURCE_DIR}/include
)

if(ENABLE_TEST)
    enable_testing()
    add_subdirectory(gtest)  
endif()




