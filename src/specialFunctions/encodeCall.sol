interface I {
    function fExternal(uint256 p, string memory t) external;
}

contract Other {
    function fExternal(uint256) external pure {}
    function fPublic(uint256) public pure {}
    function fInternal(uint256) internal pure {}
}

library L {
    function fExternal(uint256 p, string memory t) external {}
    function fInternal(uint256 p, string memory t) internal {}
}

contract Base {
    function baseFunctionExternal(uint256) external pure {}
}

contract C is Base {
    function f(int256 a) public {}
    function f2(int256 a, string memory b) public {}
    function f4() public {}

    function successFunctionArgsIntLiteralTuple()
        public
        view
        returns (bytes memory)
    {
        return abi.encodeCall(this.f, (1));
    }

    function successFunctionArgsIntLiteral()
        public
        view
        returns (bytes memory)
    {
        return abi.encodeCall(this.f, 1);
    }

    function successFunctionArgsLiteralTuple()
        public
        view
        returns (bytes memory)
    {
        return abi.encodeCall(this.f2, (1, "test"));
    }

    function successFunctionArgsEmptyTuple()
        public
        view
        returns (bytes memory)
    {
        return abi.encodeCall(this.f4, ());
    }

    function viaDeclaration() public pure returns (bytes memory) {
        return bytes.concat(
            abi.encodeCall(Other.fExternal, (1)),
            abi.encodeCall(Other.fPublic, (1)),
            abi.encodeCall(I.fExternal, (1, "123"))
        );
    }

    function viaBaseDeclaration() public pure returns (bytes memory) {
        return abi.encodeCall(Base.baseFunctionExternal, (1));
    }
} // ----
