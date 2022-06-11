pragma abicoder v2;

contract C {
    function test(uint256[][] calldata a) external returns (uint256) {
        return a.length;
    }

    function test(uint256[][] calldata a, uint256 i)
        external
        returns (uint256)
    {
        return a[i].length;
    }

    function test(
        uint256[][] calldata a,
        uint256 i,
        uint256 j
    ) external returns (uint256) {
        return a[i][j];
    }

    function reenc(
        uint256[][] calldata a,
        uint256 i,
        uint256 j
    ) external returns (uint256) {
        return this.test(a, i, j);
    }
}
