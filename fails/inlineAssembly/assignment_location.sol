contract C {
    function f() public pure {
        uint256 x;
        uint256 y;
        assembly { x, y := 7 }
    }
}
// ----
// DeclarationError 8678: (87-96): Variable count for assignment to "x, y" does not match number of values (2 vs. 1)
