type A is uint256;

type B is uint256;

library L {
    function f(mapping(A => B) storage _m, B _v)
        public
    {_m[A.wrap(uint(2))] = _v;}

    function f(mapping(uint256 => uint256) storage _m, uint256 _v)
        public
    {_m[uint(3)] = _v;}
}

contract C {
    mapping(uint256 => uint256) uintMap;
    mapping(A => B) abMap;

    function testAB() public returns (bool) {
        L.f(abMap, B.wrap(3));
        return B.unwrap(abMap[A.wrap(uint(2))]) == 3;
    }

    function testUint() public returns (bool) {
        L.f(uintMap, 4);
        return uintMap[3] == 4;
    }
}
