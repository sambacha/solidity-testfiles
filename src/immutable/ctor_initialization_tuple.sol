contract C {
    uint256 immutable x;
    uint256 immutable y;

    constructor() {
        (x, y) = f();
    }

    function f() internal pure returns (uint256 _x, uint256 _y) {
        _x = 3;
        _y = 4;
    }
} // ----
