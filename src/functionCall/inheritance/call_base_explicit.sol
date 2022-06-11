contract Base {
    function f(uint256 n) public returns (uint256) {
        return 2 * n;
    }
}

contract Child is Base {
    function g(uint256 n) public returns (uint256) {
        return Base.f(n);
    }
}
