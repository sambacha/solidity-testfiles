library L {
    struct S {
        uint256 x;
    }

    function f(uint256[] memory, uint256[] storage, S storage)
        private
        pure
        returns (
            mapping(uint256 => uint256) storage a,
            S memory b,
            uint256[] storage c
        )
    {
        return (a, b, c);
    }

    function g(uint256[] memory, uint256[] storage)
        internal
        pure
        returns (
            mapping(uint256 => uint256) storage a,
            S memory b,
            uint256[] storage c
        )
    {
        return (a, b, c);
    }

    function h(uint256[] memory, uint256[] storage)
        public
        pure
        returns (S storage x)
    {
        return x;
    }

    function i(uint256[] calldata, uint256[] storage)
        external
        pure
        returns (S storage x)
    {
        return x;
    }
}
// ----
// TypeError 3464: (197-198): This variable is of storage pointer type and can be accessed without prior assignment, which would lead to undefined behaviour.
// TypeError 3464: (203-204): This variable is of storage pointer type and can be accessed without prior assignment, which would lead to undefined behaviour.
// TypeError 3464: (359-360): This variable is of storage pointer type and can be accessed without prior assignment, which would lead to undefined behaviour.
// TypeError 3464: (365-366): This variable is of storage pointer type and can be accessed without prior assignment, which would lead to undefined behaviour.
// TypeError 3464: (460-461): This variable is of storage pointer type and can be accessed without prior assignment, which would lead to undefined behaviour.
// TypeError 3464: (557-558): This variable is of storage pointer type and can be accessed without prior assignment, which would lead to undefined behaviour.
