contract D {
    uint256 x;

    function f() public virtual {
        x = 2;
    }
}

contract C is D {
    function f() public override {}
} // ----
