pragma abicoder v2;

contract C {
    function f(uint256[] calldata s) external pure returns (bytes memory) {
        return abi.encode(s);
    }

    function g(uint256[][2] calldata s, uint256 which)
        external
        view
        returns (bytes memory)
    {
        return this.f(s[which]);
    }

    function h(uint8[] calldata s) external pure returns (bytes memory) {
        return abi.encode(s);
    }

    function i(uint8[][2] calldata s, uint256 which)
        external
        view
        returns (bytes memory)
    {
        return this.h(s[which]);
    }

    function j(bytes calldata s) external pure returns (bytes memory) {
        return abi.encode(s);
    }

    function k(bytes[2] calldata s, uint256 which)
        external
        view
        returns (bytes memory)
    {
        return this.j(s[which]);
    }
}
