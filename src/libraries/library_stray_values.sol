library Lib {
    function m(uint256 x, uint256 y) public returns (uint256) {
        return x * y;
    }
}

contract Test {
    function f(uint256 x) public returns (uint256) {
        Lib;
        Lib.m;
        return x + 9;
    }
}
// ====
// compileToEwasm: false
// ----
// library: Lib
// f(uint256): 33 -> 0x2a
