function f() pure {
    /// @unrelated bogus-value

    /// @before

    /// @solidity a   memory-safe-assembly b    c
    ///           d
    /// @after bogus-value
    assembly {}
    /// @solidity memory-safe-assembly a a a
    ///           memory-safe-assembly
    assembly {}
}
