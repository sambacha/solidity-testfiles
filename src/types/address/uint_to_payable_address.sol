contract C {
    function f(uint256 x) public pure returns (address payable) {
        return payable(address(uint160(x)));
    }
} // ----
