contract test {
    function f(uint256, uint256 k) public returns (uint256 ret_k) {
        return k;
    }
}
// ----
// Warning 2018: (20-98): Function state mutability can be restricted to pure
