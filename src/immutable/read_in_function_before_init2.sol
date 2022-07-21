contract C {
    uint256 immutable t = 2;
    uint256 x = f();

    function f() internal pure returns (uint256) {
        return t;
    }
}
// ----
// TypeError 7733: (106-107): Immutable variables cannot be read before they are initialized.
