contract C {
    struct S {
        uint256 a;
    }

    /// @inheritdoc S
    function f() internal {}
}
// ----
// DocstringParsingError 1430: (42-59): Documentation tag @inheritdoc reference "S" is not a contract.
