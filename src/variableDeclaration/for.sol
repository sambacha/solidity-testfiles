pragma solidity >0.4.24;

contract C {
    function f(uint256 x) public pure {
        for (uint256 i = 0; i < x; ++i) uint256 y;
    }
}
// ----
// SyntaxError 9079: (107-113): Variable declarations can only be used inside blocks.
