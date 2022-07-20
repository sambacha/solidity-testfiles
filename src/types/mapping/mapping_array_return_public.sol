contract C {
    function f()
        public
        pure
        returns (mapping(uint256 => uint256)[] storage m)
    {}
}
// ----
// TypeError 6651: (51-82): Data location must be "memory" or "calldata" for return parameter in function, but "storage" was given.
