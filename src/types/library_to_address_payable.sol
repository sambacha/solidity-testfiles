library L {}

contract C {
    function f() public pure returns (address payable) {
        return address(L);
    }
}
