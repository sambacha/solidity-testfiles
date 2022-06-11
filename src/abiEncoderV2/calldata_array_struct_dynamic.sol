pragma abicoder v2;

contract C {
    struct S {
        uint256[] a;
    }
    function f(S[] calldata s) external pure returns (bytes memory) {
        return abi.encode(s);
    }

    function g(S[] calldata s) external view returns (bytes memory) {
        return this.f(s);
    }
}
