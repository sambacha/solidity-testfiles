contract C {
    function f() public payable returns (C) {
        return this;
    }

    function g() public pure returns (bytes4) {
        C x = C(address(0x123));
        return x.f.selector;
    }
} // ----
