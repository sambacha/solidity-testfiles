contract C {
    uint256 x;

    function f() public pure returns (uint256) {
        return x;
    }
}
// ----
// TypeError 2527: (86-87): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
