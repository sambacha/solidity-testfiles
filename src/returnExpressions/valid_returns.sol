contract C {
    function f() public pure {
        return;
    }

    function g() public pure returns (uint256) {
        return 1;
    }

    function h() public pure returns (uint256 a) {
        return 1;
    }

    function i() public pure returns (uint256, uint256) {
        return (1, 2);
    }

    function j() public pure returns (uint256 a, uint256 b) {
        return (1, 2);
    }
} // ----
