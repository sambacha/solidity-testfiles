contract C {
    function f() public returns (uint256 x, uint256 y) {
        assembly {
            x := true
            y := false
        }
    }
}
// ====
// compileToEwasm: also
// ----
// f() -> 1, 0
