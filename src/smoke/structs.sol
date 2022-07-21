pragma abicoder v2;

contract C {
    struct S {
        uint256 a;
        uint256 b;
    }

    struct T {
        uint256 a;
        uint256 b;
        string s;
    }

    function s() public returns (S memory) {
        return S(23, 42);
    }

    function t() public returns (T memory) {
        return T(23, 42, "any");
    }
}
// ====
// compileToEwasm: also
// ----
// s() -> 23, 42
// t() -> 0x20, 23, 42, 0x60, 3, "any"
