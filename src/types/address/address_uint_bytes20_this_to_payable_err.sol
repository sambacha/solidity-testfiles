contract C {
    function f() public pure {
        address payable a = address(uint160(0));
        address payable b = address(bytes20(0));
        address payable c = address(this);
    }
}
