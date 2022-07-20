contract c {
    function f() public pure {}

    modifier m() {
        msg.value;
        _;
    }
} // ----
