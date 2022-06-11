library L {
    function equals(address a, address b) internal pure returns (bool) {
        return a == b;
    }
}

contract C {
    using L for address;

    function foo(address a, address b) public returns (bool) {
        return a.equals(b);
    }
}
