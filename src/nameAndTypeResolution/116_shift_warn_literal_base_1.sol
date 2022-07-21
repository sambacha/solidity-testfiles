contract test {
    function f() public pure returns (uint256) {
        uint8 x = 100;
        return 10 << x;
    }
} // ----
