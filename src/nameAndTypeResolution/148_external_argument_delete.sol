contract c {
    function f(uint256 a) external {
        delete a;
    }
}
// ----
// Warning 2018: (17-58): Function state mutability can be restricted to pure
