#!/bin/bash

target="build"

echo "*******************************************************************************"
echo "start to build project ..."

cmake -H. -B$target -DENABLE_TEST=on
cmake --build $target

if [ $? -ne 0 ]; then
    echo "FAILED!"
    cd ..
    exit 1
fi

echo "*******************************************************************************"
echo "start to run tests..."

./$target/gtest/mcl_gtest

if [ $? -ne 0 ]; then
    echo "FAILED!"
    cd ..
    exit 1
fi

echo "*******************************************************************************"
echo "SUCCESS!"
exit 0
