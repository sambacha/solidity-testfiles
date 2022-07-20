pragma solidity >0.4.24;

contract C {
    function f(uint256 x) public pure {
        if (x > 0) uint256 y;
    }
}
// ----
// SyntaxError 9079: (89-95): Variable declarations can only be used inside blocks.
