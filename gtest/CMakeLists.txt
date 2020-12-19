SET(dependLibs)

set(testTarget ${PROJECT_NAME}_gtest)

include(${PROJECT_SOURCE_DIR}/cmake/AddGoogleTest.cmake)
ADDGOOGLETEST()

message("dependLibs：${dependLibs}")

file(GLOB_RECURSE files
    *.cpp *.c
    )
add_executable(${testTarget} ${files})
target_link_libraries(${testTarget} PRIVATE ${PROJECT_NAME} ${dependLibs})
set_target_properties(${testTarget} PROPERTIES CXX_STANDARD 14)

add_test(NAME mcltest COMMAND ${testTarget})

