contract C {
    function f(uint256 y) public pure returns (uint256) {
        (f(y)) = 2;
    }
}
// ----
// TypeError 4247: (74-78): Expression has to be an lvalue.
