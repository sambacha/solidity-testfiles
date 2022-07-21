contract C {
    function f(bytes calldata x) public returns (uint256 r) {
        assembly { r := x.offset }
    }

    function f(uint256, bytes calldata x, uint256)
        public
        returns (uint256 r, uint256 v)
    {
        assembly {
            r := x.offset
            v := x.length
        }
    }
}
// ====
// compileToEwasm: also
// ----
// f(bytes): 0x20, 0, 0 -> 0x44
// f(bytes): 0x22, 0, 0, 0 -> 0x46
// f(uint256,bytes,uint256): 7, 0x60, 8, 2, 0 -> 0x84, 2
// f(uint256,bytes,uint256): 0, 0, 0 -> 0x24, 0x00
