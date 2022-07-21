contract C {
    modifier m(uint256 _amount, uint256 _avail) {
        require(_avail >= _amount);
        _;
    }

    function f() public pure m(1 ether, msg.value) {}
}
// ----
// TypeError 2527: (118-127): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
