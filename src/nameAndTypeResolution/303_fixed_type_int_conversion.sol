contract test {
    function f() public {
        uint64 a = 3;
        int64 b = 4;
        fixed c = b;
        ufixed d = a;
        c;
        d;
    }
}
