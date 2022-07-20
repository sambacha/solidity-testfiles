contract A {
    function foo() external view virtual returns (A) {}

    function foo(uint256) external view virtual returns (uint256) {
        return 4;
    }

    function foo(uint256, uint256) external view virtual returns (A) {}
}

contract X is A {
    uint256 public override foo;
}
// ----
// TypeError 4822: (225-249): Overriding public state variable return types differ.
