contract C {
    function add(uint256, uint256) public pure returns (uint256) {
        return 7;
    }

    function g() public pure returns (uint256 x, uint256 y) {
        x = add(1, 2);
        assembly {
            y := add(1, 2)
        }
    }
}
// ====
// compileToEwasm: also
// ----
// g() -> 7, 3
