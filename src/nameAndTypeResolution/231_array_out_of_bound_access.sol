contract c {
    uint256[2] dataArray;
    function set5th() public returns (bool) {
        dataArray[5] = 2;
        return true;
    }
}
