contract B {
    uint256 immutable x;

    constructor() {
        x = 3;
    }
}

contract C is B {
    uint256 immutable y;

    constructor() {
        y = 3;
    }
} // ----
