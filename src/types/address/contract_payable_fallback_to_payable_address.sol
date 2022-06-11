contract C {
    function f() public view {
        address payable a = payable(this);
        a;
    }

    fallback() external payable {}
}
