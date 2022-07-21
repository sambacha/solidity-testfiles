contract C {
    struct S {
        uint256 x;
    }
}

function f() returns (uint256) {
    S storage t;
}
// ----
// DeclarationError 7920: (70-71): Identifier not found or not unique.
