contract B {
    uint256 immutable x = 1;
    function f() public pure returns (uint256) {
        return x;
    }
}
