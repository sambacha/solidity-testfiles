contract C {
    function f() public pure {
        bytes1 b1 = bytes1(hex"");
        bytes1 b2 = bytes1(hex"1234");
        bytes2 b3 = bytes2(hex"12");
        bytes2 b4 = bytes2(hex"1234");
        bytes2 b5 = bytes2(hex"123456");
        bytes3 b6 = bytes3(hex"1234");
        bytes3 b7 = bytes3(hex"123456");
        bytes3 b8 = bytes3(hex"12345678");
        bytes4 b9 = bytes4(hex"123456");
        bytes4 b10 = bytes4(hex"12345678");
        bytes4 b11 = bytes4(hex"1234567890");
    }
}
