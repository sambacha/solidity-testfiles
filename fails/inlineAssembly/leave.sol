contract C {
    function f() public pure returns (uint256 w) {
        assembly {
            function f() -> t {
                t := 2
                leave
                t := 9
            }
            w := f()
        }
    }
}
// ====
// compileToEwasm: also
// ----
// f() -> 2
