contract C {
    function f(uint256, bytes calldata x, uint256)
        public
        returns (uint256 r, uint256 v)
    {
        assembly {
            x.offset := 8
            x.length := 20
        }
        assembly {
            r := x.offset
            v := x.length
        }
    }
}
// ====
// compileToEwasm: also
// ----
// f(uint256,bytes,uint256): 7, 0x60, 8, 2, 0 -> 8, 0x14
// f(uint256,bytes,uint256): 0, 0, 0 -> 8, 0x14
