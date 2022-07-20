pragma abicoder v2;

contract C {
    function f(uint256 a, uint16[] memory b, uint256 c)
        public
        pure
        returns (uint256, uint256, uint256)
    {
        return (b.length, b[a], c);
    }
}
// ----
// f(uint256,uint16[],uint256): 6, 0x60, 9, 7, 11, 12, 13, 14, 15, 16, 17 -> 7, 17, 9
