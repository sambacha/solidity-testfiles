contract test {
    enum MinMax {
        A,
        B,
        C,
        D
    }

    function min() public returns (uint256) {
        return uint256(type(MinMax).min);
    }

    function max() public returns (uint256) {
        return uint256(type(MinMax).max);
    }
}
// ----
// min() -> 0
// max() -> 3
