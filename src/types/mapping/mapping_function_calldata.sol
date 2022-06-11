pragma abicoder v2;

contract test {
    struct S {
        mapping(uint256 => uint256) s;
    }
    function f(S calldata b) external {}
}
