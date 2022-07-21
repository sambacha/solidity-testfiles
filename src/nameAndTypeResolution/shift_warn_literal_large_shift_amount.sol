contract test {
    function f() public pure returns (uint256) {
        uint256 x = 100;
        return 10 << x;
    }
} // ----
