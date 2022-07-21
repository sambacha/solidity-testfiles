library L {
    function f(
        mapping(uint256 => uint256) storage a,
        mapping(uint256 => uint256) storage b,
        bool c
    )
        internal
        pure
        returns (mapping(uint256 => uint256) storage)
    {
        return c ? a : b;
    }
} // ----
