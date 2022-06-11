abstract contract A {
    constructor(mapping(uint256 => uint256)[] storage m) {
        m.push();
        m[0][1] = 2;
    }
}

contract C is A {
    mapping(uint256 => mapping(uint256 => uint256)[]) public m;

    constructor() A(m[1]) {}
}
