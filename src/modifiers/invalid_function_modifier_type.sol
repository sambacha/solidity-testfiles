contract B {
    function f() public mod1(true) {}

    modifier mod1(uint256 a) {
        if (a > 0) _;
    }
}
// ----
// TypeError 4649: (35-39): Invalid type for argument in modifier invocation. Invalid implicit conversion from bool to uint256 requested.
