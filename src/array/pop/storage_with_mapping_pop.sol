contract C {
    mapping(uint256 => uint256)[] array;
    mapping(uint256 => uint256) map;

    function f() public {
        array.pop();
    }
} // ----
