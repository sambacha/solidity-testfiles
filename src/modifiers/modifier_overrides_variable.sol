contract A {
    modifier mod(uint256 a) {_;}
}

contract B is A {
    uint256 public mod;
}
