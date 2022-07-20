contract C {
    uint256 immutable x = 1;

    function readX() internal pure returns (uint256) {
        return x + 3;
    }
} // ----
