pragma abicoder v2;

contract C {
    struct S {
        uint128 p1;
        uint256[3] a;
        uint32 p2;
    }
    function f(S[] calldata c) internal returns (S[] memory) {
        return c;
    }

    function g(
        S[] calldata c,
        uint256 s,
        uint256 e
    ) public returns (S[] memory) {
        return f(c[s:e]);
    }

    function f1(uint256[3][] calldata c)
        internal
        returns (uint256[3][] memory)
    {
        return c;
    }

    function g1(
        uint256[3][] calldata c,
        uint256 s,
        uint256 e
    ) public returns (uint256[3][] memory) {
        return f1(c[s:e]);
    }
}
