contract C {
    uint256 immutable x;

    function f() public view {
        uint256 t;
        assembly {
            t := x
        }
    }
}
// ----
// TypeError 3773: (118-119): Assembly access to immutable variables is not supported.
