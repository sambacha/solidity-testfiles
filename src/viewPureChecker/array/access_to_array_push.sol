contract A {
    uint256[] x;

    function g() public returns (uint256) {
        return x.push();
    }
} // ----
