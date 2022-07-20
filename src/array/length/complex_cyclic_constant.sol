contract C {
    uint256 constant L2 = LEN - 10;
    uint256 constant L1 = L2 / 10;
    uint256 constant LEN = 10 + L1 * 5;

    function f() public {
        uint256[LEN] a;
    }
}
// ----
// TypeError 5210: (17-44): Cyclic constant definition (or maximum recursion depth exhausted).
