contract A {
    uint256 i;
}

contract B is A {
    uint256 i;
}
// ----
// DeclarationError 9097: (43-49): Identifier already declared.
