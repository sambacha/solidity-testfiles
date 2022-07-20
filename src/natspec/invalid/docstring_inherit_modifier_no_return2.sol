contract A {
    /// @return a
    function g(int256 x) public virtual {
        return 2;
    }
}

contract B is A {
    function g(int256 x) public pure override returns (int256 b) {
        return 2;
    }
}
// ----
// DocstringParsingError 2604: (14-27): Documentation tag "@return a" exceeds the number of return parameters.
// TypeError 4822: (98-166): Overriding function return types differ.
// TypeError 8863: (64-72): Different number of arguments in return statement than in returns declaration.
