contract A {
    function f() public pure {}
}

contract B {
    A private a;
}

contract C {
    B b;
    function f() public view {
        b.a.f();
    }
}
