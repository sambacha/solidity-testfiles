contract C {
    struct S {
        uint256[] a;
    }

    S s;

    function f() public {
        s.a.length = 4;
    }
}
// ----
// TypeError 7567: (95-105): Member "length" is read-only and cannot be used to resize arrays.
