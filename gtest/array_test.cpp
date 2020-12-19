#include "gtest/gtest.h"
#include "mcl/array.h"

using namespace std;

class ArrayTest : public testing::Test {
    protected:
    void SetUp() override {}
    void TearDown() override {} 
};

TEST_F(ArrayTest, array_init) {
    MCL_DECL_ARRAY(int, IntArray);

    int a[10] = {0, 1, 2, 3};
    IntArray arr;
    MCL_INIT_ARRAY(arr, a, 10, 4);

    ASSERT_EQ(a,  MCL_ARRAY_RAW(arr));
    ASSERT_EQ(10, MCL_ARRAY_SIZE(arr));
    ASSERT_EQ(4,  MCL_ARRAY_LEN(arr));
    ASSERT_EQ(0,  MCL_ARRAY_FIRST(arr));
    ASSERT_EQ(3,  MCL_ARRAY_LAST(arr));

}