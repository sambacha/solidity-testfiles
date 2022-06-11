struct S {
    mapping(uint256 => uint256) m;
}

abstract contract A {
    constructor(S storage s) {
        s.m[5] = 16;
    }
}

contract C is A {
    mapping(uint256 => S) m;

    constructor() A(m[1]) {}

    function getM(uint256 a, uint256 b) external returns (uint256) {
        return m[a].m[b];
    }
}
