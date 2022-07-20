contract C {
    function f(int256[] calldata b, uint256 start, uint256 end)
        public
        returns (int256)
    {
        int256[] memory m = b[start:end];
        uint256 len = end - start;
        assert(len == m.length);
        for (uint256 i = 0; i < len; i++) {
            assert(b[start:end][i] == m[i]);
        }
        return [b[start:end]][0][0];
    }

    function g(int256[] calldata b, uint256 start, uint256 end)
        public
        returns (int256[] memory)
    {
        return b[start:end];
    }

    function h1(int256[] memory b) internal returns (int256[] memory) {
        return b;
    }

    function h(int256[] calldata b, uint256 start, uint256 end)
        public
        returns (int256[] memory)
    {
        return h1(b[start:end]);
    }
}
// ----
// f(int256[],uint256,uint256): 0x60, 1, 3, 4, 1, 2, 3, 4 -> 2
// g(int256[],uint256,uint256): 0x60, 1, 3, 4, 1, 2, 3, 4 -> 0x20, 2, 2, 3
// h(int256[],uint256,uint256): 0x60, 1, 3, 4, 1, 2, 3, 4 -> 0x20, 2, 2, 3
