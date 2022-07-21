contract C {
    struct S {
        uint256 x;
    }

    S s;

    function f() internal view returns (S storage) {
        return s;
    }

    function g() public {
        f().x = 2;
    }

    function h() public view {
        f();
        f().x;
    }
} // ----
