contract Test {
    struct RecursiveStruct {
        address payable d;
        mapping(uint256 => address payable) c;
        mapping(uint256 => address payable[]) d;
    }
    function func() private pure {
        RecursiveStruct [ 1 ] memory val;
        val;
    }
}
