contract C {
    function _() public pure returns (uint256) {
        return 88;
    }

    function g() public pure returns (uint256) {
        return _();
    }

    function h() public pure returns (uint256) {
        _;
        return 33;
    }
}
// ====
// compileToEwasm: also
// ----
// _() -> 88
// g() -> 88
// h() -> 33
