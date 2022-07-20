contract C {
    uint256 immutable x = 0;
    uint256 y = 0;

    function f() internal readX {}

    modifier readX() {
        _;
        y = x + 1;
    }
} // ----
