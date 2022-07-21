contract B {
    uint256 immutable x = 3;

    function readX() internal view virtual returns (uint256) {
        return x;
    }
}

contract C is B {
    constructor() {
        super.readX();
    }

    function readX() internal pure override returns (uint256) {
        return 1;
    }
} // ----
