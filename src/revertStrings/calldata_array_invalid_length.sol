pragma abicoder v2;

contract C {
    function f(uint256[][] calldata x) external returns (uint256) {
        return x[0].length;
    }
}
