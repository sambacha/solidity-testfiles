abstract contract C {
    function transfer(uint256) public virtual;

    function f() public {
        this.transfer(10);
    }
}
