contract test {
    uint256 value1;
    uint256 value2;

    function f(uint256 x, uint256 y) public returns (uint256 w) {
        uint256 value3 = y;
        value1 += x;
        value3 *= x;
        value2 *= value3 + value1;
        return value2 += 7;
    }
}
// ====
// compileToEwasm: also
// ----
// f(uint256,uint256): 0, 6 -> 7
// f(uint256,uint256): 1, 3 -> 0x23
// f(uint256,uint256): 2, 25 -> 0x0746
// f(uint256,uint256): 3, 69 -> 396613
// f(uint256,uint256): 4, 84 -> 137228105
// f(uint256,uint256): 5, 2 -> 0xcc7c5e28
// f(uint256,uint256): 6, 51 -> 1121839760671
// f(uint256,uint256): 7, 48 -> 408349672884251
