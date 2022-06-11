contract C {
    bool constant c = this;
    function f() public {
        assembly {
        let t := c
    }
    }
}
