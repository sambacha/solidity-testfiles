contract C {
    modifier m() {
        _;
    }
}

contract D is C {
    function f() public C.m() {}
} // ----
