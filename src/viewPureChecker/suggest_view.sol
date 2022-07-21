contract C {
    uint256 x;

    function g() public returns (uint256) {
        return x;
    }
}
// ----
// Warning 2018: (29-77): Function state mutability can be restricted to view
