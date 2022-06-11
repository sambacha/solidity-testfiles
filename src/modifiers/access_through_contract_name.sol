contract A {
    uint256 public x = 7;
    modifier m() virtual {x = 2;_;}
}

contract C is A {
    modifier m() override {x = 1;_;}

    function f() public A.m returns (uint256) {
        return 9;
    }

    function g() public m returns (uint256) {
        return 10;
    }
}
