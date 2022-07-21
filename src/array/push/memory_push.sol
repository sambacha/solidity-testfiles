contract C {
    function f() public {
        uint256[] memory x;
        x.push();
    }
}
// ----
// TypeError 4994: (72-78): Member "push" is not available in uint256[] memory outside of storage.
