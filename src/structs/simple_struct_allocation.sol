contract C {
    struct S {
        uint256 a;
    }

    function f() external returns (uint256) {
        S memory s = S(1);
        return s.a;
    }
}
// ====
// compileToEwasm: also
// ----
// f() -> 1
