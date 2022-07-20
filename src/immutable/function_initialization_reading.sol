contract C {
    uint256 immutable x = f();

    function f() public pure returns (uint256) {
        return 3 + x;
    }
}
// ----
// TypeError 7733: (99-100): Immutable variables cannot be read before they are initialized.
