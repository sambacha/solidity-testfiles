pragma solidity >=0.4.0 <0.9.0;

contract InvalidTest {
    function() internal storedFn;
    uint256 public x;

    constructor() {
        uint256 _y1;
        uint256 _y2;
        uint256 _y3;
        uint256 _y4;
        uint256 _y5;
        uint256 _y6;
        uint256 _y7;
        uint256 _y8;
        uint256 _y9;
        uint256 _y10;
        uint256 _y11;
        uint256 _y12;
        uint256 _y13;
        uint256 _y14;

        function() internal invalid;
        storedFn = invalid;
    }

    function run() public {
        // this did not always cause revert in the past
        storedFn();
    }

    function z() public {
        x++;
    }
}
// ====
// compileToEwasm: also
// ----
// run() -> FAILURE, hex"4e487b71", 0x51
