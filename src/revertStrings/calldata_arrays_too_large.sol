pragma abicoder v2;

contract C {
    function f(
        uint256 a,
        uint256[] calldata b,
        uint256 c
    ) external pure returns (uint256) {
        return 7;
    }
}
