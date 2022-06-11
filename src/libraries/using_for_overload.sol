library D {
    struct s {
        uint256 a;
    }
    function mul(s storage self, uint256 x)
        public
        returns (uint256)
    {return self.a *= x;}

    function mul(s storage self, bytes32 x) public returns (bytes32) {}
}

contract C {
    using D for D.s;
    D.s public x;
    function f(uint256 a) public returns (uint256) {
        x.a = 6;
        return x.mul(a);
    }
}
