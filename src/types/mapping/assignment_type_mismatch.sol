contract D {
    mapping(uint256 => uint256) a;

    function foo() public view {
        mapping(uint256 => int256) storage c = a;
    }
}
// ----
// TypeError 9574: (84-119): Type mapping(uint256 => uint256) is not implicitly convertible to expected type mapping(uint256 => int256).
