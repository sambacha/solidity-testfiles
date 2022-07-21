abstract contract C {
    /// @param id Some identifier
    /// @return No value returned
    function vote(uint256 id) public virtual returns (uint256 value);
}
// ----
// DocstringParsingError 5856: (26-89): Documentation tag "@return No value returned" does not contain the name of its return parameter.
