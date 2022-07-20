contract C {
    modifier m() {
        uint256 x;
        assembly {
    x := callvalue()
    }
        _;
    }

    function f() public payable m {}
} // ----
