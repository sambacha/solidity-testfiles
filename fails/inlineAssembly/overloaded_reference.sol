contract C {
    function f() public pure {}
    function f(address) public pure {}

    function g() public pure {
        assembly {
            let x := f
        }
    }
}
// ----
// DeclarationError 4718: (155-156): Multiple matching identifiers. Resolving overloaded identifiers is not supported.
