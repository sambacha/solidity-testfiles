contract A {
    constructor(uint256) {}
}

contract B {
    constructor(uint256) {}
}

contract C {
    constructor(uint256) {}
}

contract D is A, B, C {
    uint256[] x;
    constructor() m2(f(1)) B(f(2)) m1(f(3)) C(f(4)) m3(f(5)) A(f(6)) {
        f(7);
    }

    function query() public view returns (uint256[] memory) {return x;}

    modifier m1(uint256) {_;}
    modifier m2(uint256) {_;}
    modifier m3(uint256) {_;}

    function f(uint256 y) internal returns (uint256) {x.push(y);return 0;}
}
