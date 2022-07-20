contract test {
    function f(uint256 a) public returns (uint256) {
        return 2 * a;
    }

    function g() public returns (uint256) {
        function (uint) returns (uint) x = f;
        return x(7);
    }
}
// ----
// Warning 2018: (20-78): Function state mutability can be restricted to pure
