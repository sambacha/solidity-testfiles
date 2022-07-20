contract C {
    uint256 immutable x = 0;
    uint256 y = f();

    function f() internal returns (uint256) {
        return x;
    }
}
// ----
// TypeError 7733: (107-108): Immutable variables cannot be read before they are initialized.
