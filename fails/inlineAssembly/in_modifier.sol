contract test {
    modifier m() {
        uint256 a = 1;
        assembly {
            a := 2
        }
        _;
    }

    function f() public m {}
} // ----
