contract C {
    function f() public {
        mapping(uint256 => uint256) storage x;
        x;
    }
}
// ----
// TypeError 4182: (47-78): Uninitialized mapping. Mappings cannot be created dynamically, you have to assign them from a state variable.
