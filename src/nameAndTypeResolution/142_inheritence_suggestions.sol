contract a {
    function func() public {}
}

contract c is a {
    function g() public {
        uint256 var1 = fun();
    }
}
// ----
// DeclarationError 7576: (105-108): Undeclared identifier. Did you mean "func"?
