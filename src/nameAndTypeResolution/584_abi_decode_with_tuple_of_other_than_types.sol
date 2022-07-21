contract C {
    function f() public pure {
        abi.decode("", (0));
    }
}
// ----
// TypeError 1039: (60-61): Argument has to be a type name.
