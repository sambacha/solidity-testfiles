pragma abicoder v2;

struct S {
    uint256 x;
    uint256 y;
}

library L {
    function reverse(S calldata _s) internal pure returns (uint256, uint256) {
        return (_s.y, _s.x);
    }
}

contract C {
    function test(uint256, S calldata _s, uint256)
        external
        pure
        returns (uint256, uint256)
    {
        return L.reverse(_s);
    }
}
// ----
// test(uint256,(uint256,uint256),uint256): 7, 66, 77, 4 -> 77, 66
