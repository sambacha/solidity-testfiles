contract test {
    function f(uint8 a) public returns (uint256) {
        return a;
    }

    function f(uint256 a) public returns (uint256) {
        return 2 * a;
    }

    // literal 1 can be both converted to uint and uint8, so the call is ambiguous.
    function g() public returns (uint256) {
        return f(1);
    }
}
// ----
// TypeError 4487: (271-272): No unique declaration found after argument-dependent lookup.
