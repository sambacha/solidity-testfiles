contract C {
    uint256[] x;

    fallback() external {
        uint256[] storage y = x;
        assembly {
            pop(y.slot)
            pop(y.offset)
        }
    }
} // ----
