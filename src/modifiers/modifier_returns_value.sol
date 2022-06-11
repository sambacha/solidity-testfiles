contract A {
    function f(uint256 a) public mod(2) returns (uint256 r) {}

    modifier mod(uint256 a) {_;return 7;}
}
