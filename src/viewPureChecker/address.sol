contract C {
    function f() public view returns (uint256) {
        return address(this).balance;
    }

    function g() public view returns (uint256) {
        return address(0).balance;
    }
} // ----
