library L {
    function f(uint256) external pure {}
}

contract C {
    using L for *;

    function f() public pure {
        L.f(2);
        uint x;
        x.f();
    }
}
