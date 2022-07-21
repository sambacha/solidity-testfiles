contract C {
    function f(uint256 x) public payable {
        assembly {
            x := callvalue()
        }
    }
} // ----
