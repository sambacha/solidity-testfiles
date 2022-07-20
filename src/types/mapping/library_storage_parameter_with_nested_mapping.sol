library Test {
    struct Nested {
        mapping(uint256 => uint256)[2][] a;
    }

    struct X {
        Nested n;
    }

    function f(X storage x) public {}
} // ----
