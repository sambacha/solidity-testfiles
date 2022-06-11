enum E {
    A,
    B,
    C
}

contract C {
    mapping(E => bool) e;
    function f(uint256 a, uint8 b) public view returns (bool, bool) {
        return (e[a], e[b]);
    }
}
