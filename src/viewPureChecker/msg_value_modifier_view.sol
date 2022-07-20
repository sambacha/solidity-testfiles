contract C {
    modifier m(uint256 _amount, uint256 _avail) {
        require(_avail >= _amount);
        _;
    }

    function f() public view m(1 ether, msg.value) {}
}
// ----
// TypeError 5887: (118-127): "msg.value" and "callvalue()" can only be used in payable public functions. Make the function "payable" or use an internal function to avoid this error.
