contract b {
    struct c {
        uint256[2 ** 253] a;
    }

    c d;

    function e() public view {
        c storage x = d;
        x.a[0];
        function()[3**44] storage fs;
    }
}
