contract C {
    uint256 immutable x;

    constructor() {
        x = f();
    }

    function f() public pure returns (uint256) {
        return 3 + x;
    }
}
// ----
// TypeError 7733: (136-137): Immutable variables cannot be read before they are initialized.
