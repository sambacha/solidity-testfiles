pragma abicoder v2;

contract Test {
    struct S {
        int256 a;
    }

    function f(S[] calldata) external {}
    function f(S[][] calldata) external {}
} // ----
