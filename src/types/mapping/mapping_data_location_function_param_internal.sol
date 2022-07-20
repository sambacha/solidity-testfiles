contract c {
    function f4(mapping(uint256 => uint256) storage) internal pure {}
    function f5(mapping(uint256 => uint256) memory) internal pure {}
}
// ----
// TypeError 4061: (93-121): Type mapping(uint256 => uint256) is only valid in storage because it contains a (nested) mapping.
