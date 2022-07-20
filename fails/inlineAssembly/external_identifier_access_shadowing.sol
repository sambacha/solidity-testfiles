contract C {
    function f() public returns (uint256 x) {
        assembly {
            function g() -> f { f := 2 }
            x := g()
        }
    }
}
// ----
// f() -> 2
