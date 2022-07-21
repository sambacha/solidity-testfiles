abstract contract B {
    uint256 immutable x;

    constructor(function() internal returns(uint) fp) {
        x = fp();
    }
}

contract C is B(C.f) {
    function f() internal returns (uint256) {
        return x + 2;
    }
}
// ----
// TypeError 7733: (200-201): Immutable variables cannot be read before they are initialized.
