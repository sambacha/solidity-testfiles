contract C {
    function f() public returns (C) {return this;}

    function g() public returns (uint256) {return f().balance;}
}
