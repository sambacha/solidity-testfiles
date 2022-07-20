contract C {
    struct S {
        uint256 a;
    }

    S s;

    function f() public view {
        S storage x = s;
        x;
    }

    function g() public view {
        S storage x = s;
        x = s;
    }

    function i() public {
        s.a = 2;
    }

    function h() public {
        S storage x = s;
        x.a = 2;
    }
} // ----
