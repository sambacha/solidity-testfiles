contract C {
    function f(address payable) internal pure {}
    function f(address) internal pure returns (uint256) {}

    function g() internal pure {
        address a = address(0);
        uint256 b = f(a); // TODO: should this be valid?
        b;
    }
} // ----
