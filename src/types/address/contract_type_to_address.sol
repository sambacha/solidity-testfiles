interface I {}

library L {}

contract C {
    function f() public pure {
        address(C);
        address(I);
        address(L);

        address(type(C));
        address(type(I));
        address(type(L));
    }
}
