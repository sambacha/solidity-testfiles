contract C {
    function f(uint256 x) public {
        assembly {
            x := callvalue()
        }
    }
}
// ----
// Warning 2018: (17-108): Function state mutability can be restricted to view
