contract C {
    function f() internal returns (uint256 x) {
        assembly {
            x := callvalue()
        }
    }

    function g() public returns (uint256) {
        return f();
    }
}
// ----
// Warning 2018: (17-121): Function state mutability can be restricted to view
