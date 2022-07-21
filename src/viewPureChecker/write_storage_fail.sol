contract C {
    uint256 x;

    function f() public view {
        x = 2;
    }
}
// ----
// TypeError 8961: (56-57): Function cannot be declared as view because this expression (potentially) modifies the state.
