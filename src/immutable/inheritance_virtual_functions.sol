contract B {
    uint256 immutable x;

    constructor() {
        x = xInit();
    }

    function xInit() internal virtual returns (uint256) {
        return 3;
    }
}

contract C is B {
    function xInit() internal override returns (uint256) {
        return x;
    }
}
// ----
// TypeError 7733: (253-254): Immutable variables cannot be read before they are initialized.
