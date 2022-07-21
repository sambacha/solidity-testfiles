contract c {
    mapping(uint256 => uint256) y;

    function f() public view {
        mapping(uint256 => uint256) calldata x = y;
        x;
    }
}
// ----
// TypeError 4061: (81-113): Type mapping(uint256 => uint256) is only valid in storage because it contains a (nested) mapping.
