contract C {
    uint256[] data;

    function test() public {
        data.pop();
    }
} // ----
