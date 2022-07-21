contract B {
    function f() public pure mod(x) {
        uint256 x = 7;
    }

    modifier mod(uint256 a) {
        if (a > 0) _;
    }
}
// ----
// DeclarationError 7576: (34-35): Undeclared identifier.
