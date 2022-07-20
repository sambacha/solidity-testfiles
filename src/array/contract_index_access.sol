contract C {
    function f() public view {
        C[0];
    }
}
// ----
// Warning 6133: (52-56): Statement has no effect.
// Warning 2018: (17-63): Function state mutability can be restricted to pure
