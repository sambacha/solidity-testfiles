library L {
    struct S {
        uint256 x;
    }

    function g() internal pure returns (uint256[2]) {}
    function h() internal pure returns (uint256[]) {}
    function i() internal pure returns (S) {}
    function j() internal pure returns (mapping(uint256 => uint256)) {}
    function gp(uint256[2]) internal pure {}
    function hp(uint256[]) internal pure {}
    function ip(S) internal pure {}
    function jp(mapping(uint256 => uint256)) internal pure {}
}
// ----
// TypeError 6651: (77-84): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (129-135): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (180-181): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (226-247): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (268-275): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
// TypeError 6651: (310-316): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
// TypeError 6651: (351-352): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
// TypeError 6651: (387-408): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
