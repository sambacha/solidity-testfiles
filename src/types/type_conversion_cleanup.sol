contract Test {
    function test()
        public
        returns (uint256 ret)
    {return uint(uint160(address(uint160(uint128(type(uint200).max)))));}
}
