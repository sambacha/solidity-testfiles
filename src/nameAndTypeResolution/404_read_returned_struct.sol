pragma abicoder v2;

contract A {
    struct T {
        int256 x;
        int256 y;
    }

    function g() public returns (T memory) {
        return this.g();
    }
} // ----
