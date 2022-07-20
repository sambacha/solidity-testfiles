pragma abicoder v2;

contract C {
    function f(uint256 a, bytes memory b, uint256 c)
        public
        pure
        returns (uint256, uint256, bytes1, uint256)
    {
        return (a, b.length, b[3], c);
    }

    function f_external(uint256 a, bytes calldata b, uint256 c)
        external
        pure
        returns (uint256, uint256, bytes1, uint256)
    {
        return (a, b.length, b[3], c);
    }
}
// ----
// f(uint256,bytes,uint256): 6, 0x60, 9, 7, "abcdefg" -> 6, 7, "d", 9
// f_external(uint256,bytes,uint256): 6, 0x60, 9, 7, "abcdefg" -> 6, 7, "d", 9
