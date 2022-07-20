contract test {
    struct str {
        mapping(uint256 => uint256) map;
    }

    str data;

    function fun() public {
        mapping(uint256 => uint256) storage a = data.map;
        data.map = a;
        (data.map) = a;
        (data.map, data.map) = (a, a);
    }
}
// ----
// TypeError 9214: (172-180): Types in storage containing (nested) mappings cannot be assigned to.
// TypeError 9214: (195-203): Types in storage containing (nested) mappings cannot be assigned to.
// TypeError 9214: (219-227): Types in storage containing (nested) mappings cannot be assigned to.
// TypeError 9214: (229-237): Types in storage containing (nested) mappings cannot be assigned to.
