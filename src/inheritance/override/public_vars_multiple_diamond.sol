contract A {
    function foo() external view virtual returns (uint256) {
        return 5;
    }
}

contract B is A {
    function foo() external view virtual override returns (uint256) {
        return 5;
    }
}

contract C is A {
    function foo() external view virtual override returns (uint256) {
        return 5;
    }
}

contract X is B, C {
    uint256 public override foo;
}
// ----
// TypeError 4327: (305-313): Public state variable needs to specify overridden contracts "B" and "C".
