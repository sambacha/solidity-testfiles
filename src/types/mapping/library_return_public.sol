library L {
    function f(
        mapping(uint256 => uint256) storage a,
        mapping(uint256 => uint256) storage b,
        bool c
    )
        public
        pure
        returns (mapping(uint256 => uint256) storage)
    {
        return c ? a : b;
    }
} // ----
