pragma abicoder v2;

contract C {
    struct S {
        uint256 a;
        T[] sub;
    }

    struct T {
        uint256[] x;
    }

    function f() public returns (uint256, S memory) {}
} // ----
