contract C {
    receive() external payable {}

    fallback() external payable {
        uint256 x;
        assembly {
            x := callvalue()
        }
    }
} // ----
