contract B {
    function f(uint8 a) public pure mod1(a, true) mod2(r) returns (bytes7 r) {}

    modifier mod1(uint256 a, bool b) {
        if (b) _;
    }

    modifier mod2(bytes7 a) {
        while (a == "1234567") _;
    }
} // ----
