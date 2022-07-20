contract C {
    modifier m1(uint256 value) {
        _;
    }

    modifier m2(uint256 value) {
        _;
    }

    function f() public m1(x = 2) m2(y = 3) returns (uint256 x, uint256 y) {}
}
// ----
// f() -> 2, 3
