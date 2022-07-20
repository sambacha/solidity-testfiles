pragma solidity >= 0.6.0;

contract C {
    function h(uint256[4] memory n) public pure returns (uint256) {
        return n[0] + n[1] + n[2] + n[3];
    }

    function i(uint256[4] memory n) public view returns (uint256) {
        return this.h(n) * 2;
    }
}
// ----
// h(uint256[4]): 1, 2, 3, 4 -> 10
// i(uint256[4]): 1, 2, 3, 4 -> 20
