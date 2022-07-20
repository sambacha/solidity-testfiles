contract C {
    function f() public {
        uint256[] memory x;
        x.pop();
    }
}
// ----
// TypeError 4994: (72-77): Member "pop" is not available in uint256[] memory outside of storage.
