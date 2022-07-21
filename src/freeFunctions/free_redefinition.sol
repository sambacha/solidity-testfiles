function f() pure returns (uint256) {
    return 1337;
}

function f() view returns (uint256) {
    return 42;
}

contract C {
    function g() public pure virtual returns (uint256) {
        return f();
    }
}
// ----
// DeclarationError 1686: (0-49): Function with same name and parameter types defined twice.
