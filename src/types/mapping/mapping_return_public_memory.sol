contract C {
    function f() public pure returns (mapping(uint256 => uint256) memory m) {}
}
// ----
// TypeError 4103: (51-79): Types containing (nested) mappings can only be parameters or return variables of internal or library functions.
