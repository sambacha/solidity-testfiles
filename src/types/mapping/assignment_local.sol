contract test {
    mapping(uint256 => uint256) map;

    function fun() public view {
        mapping(uint256 => uint256) storage a = map;
        mapping(uint256 => uint256) storage b = map;
        b = a;
        (b) = a;
        (b, b) = (a, a);
    }
} // ----
