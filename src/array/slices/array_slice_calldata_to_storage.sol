contract C {
    int256[] s;

    function f(int256[] calldata b, uint256 start, uint256 end)
        public
        returns (int256)
    {
        s = b[start:end];
        uint256 len = end - start;
        assert(len == s.length);
        for (uint256 i = 0; i < len; i++) {
            assert(b[start:end][i] == s[i]);
        }
        return s[0];
    }
}
// ----
// f(int256[],uint256,uint256): 0x60, 1, 3, 4, 1, 2, 3, 4 -> 2
