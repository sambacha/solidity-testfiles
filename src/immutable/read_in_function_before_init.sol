abstract contract A {
    uint256 public t;

    constructor() {
        t = f();
    }

    function f() internal view virtual returns (uint256);
}

contract B is A {
    uint256 immutable x = 2;

    function f() internal view override returns (uint256) {
        return x;
    }
}
// ----
// TypeError 7733: (223-224): Immutable variables cannot be read before they are initialized.
