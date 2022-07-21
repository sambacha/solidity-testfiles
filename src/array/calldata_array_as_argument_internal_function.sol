pragma abicoder v2;

contract Test {
    function f(uint256[] calldata c) internal returns (uint256 a, uint256 b) {
        return (c.length, c[0]);
    }

    function g(uint256[] calldata c) external returns (uint256 a, uint256 b) {
        return f(c);
    }

    function h(uint256[] calldata c, uint256 start, uint256 end)
        external
        returns (uint256 a, uint256 b)
    {
        return f(c[start:end]);
    }
}
// ====
// compileToEwasm: also
// ----
// g(uint256[]): 0x20, 4, 1, 2, 3, 4 -> 4, 1
// h(uint256[],uint256,uint256): 0x60, 1, 3, 4, 1, 2, 3, 4 -> 2, 2
