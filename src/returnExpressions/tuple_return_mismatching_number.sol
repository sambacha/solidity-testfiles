contract C {
    function f() public pure returns (uint256, uint256) {
        return 1;
    }

    function g() public pure returns (uint256, uint256) {
        return (1, 2, 3);
    }

    function h() public pure returns (uint256, uint256) {
        return;
    }
}
// ----
// TypeError 8863: (77-85): Different number of arguments in return statement than in returns declaration.
// TypeError 5132: (157-173): Different number of arguments in return statement than in returns declaration.
// TypeError 6777: (245-252): Return arguments required.
