macro(ADDGOOGLETEST)
    include(${PROJECT_SOURCE_DIR}/cmake/CPM.cmake)
    CPMAddPackage(
        NAME googletest
        GITHUB_REPOSITORY google/googletest
        GIT_TAG master
    )
    set(dependLibs ${dependLibs} gtest)
endmacro(ADDGOOGLETEST)