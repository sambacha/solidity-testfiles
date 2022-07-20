pragma abicoder v2;

library L {
    function reverse(uint256[] calldata _a)
        internal
        pure
        returns (uint256, uint256)
    {
        return (_a[1], _a[0]);
    }
}

contract C {
    using L for *;

    function testArray(uint256, uint256[] calldata _a, uint256)
        external
        pure
        returns (uint256, uint256)
    {
        return _a.reverse();
    }

    function testSlice(uint256, uint256[] calldata _a, uint256)
        external
        pure
        returns (uint256, uint256)
    {
        return _a[:].reverse();
    }
}
// ----
// testArray(uint256,uint256[],uint256): 7, 0x60, 4, 2, 66, 77 -> 77, 66
// testSlice(uint256,uint256[],uint256): 7, 0x60, 4, 2, 66, 77 -> 77, 66
