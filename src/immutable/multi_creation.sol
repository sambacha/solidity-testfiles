contract A {
    uint256 immutable a;

    constructor() {
        a = 7;
    }

    function f() public view returns (uint256) {
        return a;
    }
}

contract B {
    uint256 immutable a;

    constructor() {
        a = 5;
    }

    function f() public view returns (uint256) {
        return a;
    }
}

contract C {
    uint256 immutable a;
    uint256 public x;
    uint256 public y;

    constructor() {
        a = 3;
        x = (new A()).f();
        y = (new B()).f();
    }

    function f() public returns (uint256, uint256, uint256) {
        return (a, (new A()).f(), (new B()).f());
    }
}
// ----
// f() -> 3, 7, 5
// gas irOptimized: 126044
// gas legacy: 151334
// gas legacyOptimized: 125166
// x() -> 7
// y() -> 5
