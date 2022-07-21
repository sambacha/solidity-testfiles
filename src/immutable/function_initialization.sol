contract C {
    uint256 immutable x = f();

    function f() public pure returns (uint256) {
        return 3;
    }
} // ----
