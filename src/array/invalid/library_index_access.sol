library C {
    function f() public view {
        C[0];
    }
}
// ----
// TypeError 2876: (51-55): Index access for library types and arrays of libraries are not possible.
