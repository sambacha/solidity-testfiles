struct S {
    mapping(uint256 => uint256)[2] a;
}

contract C {
    function f(S storage s) public {}
}
