library L {
    struct S {
        uint256 x;
    }

    function g() private pure returns (uint256[2]) {}
    function h() private pure returns (uint256[]) {}
    function i() private pure returns (S) {}
    function j() private pure returns (mapping(uint256 => uint256)) {}
    function gp(uint256[2]) private pure {}
    function hp(uint256[]) private pure {}
    function ip(S) private pure {}
    function jp(mapping(uint256 => uint256)) private pure {}
}
// ----
// TypeError 6651: (76-83): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (127-133): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (177-178): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (222-243): Data location must be "storage", "memory" or "calldata" for return parameter in function, but none was given.
// TypeError 6651: (264-271): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
// TypeError 6651: (305-311): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
// TypeError 6651: (345-346): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
// TypeError 6651: (380-401): Data location must be "storage", "memory" or "calldata" for parameter in function, but none was given.
