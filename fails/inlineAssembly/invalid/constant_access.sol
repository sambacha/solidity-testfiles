contract test {
    uint256 constant x = 1;

    function f() public pure {
        assembly {
            let y := x
        }
    }
} // ----
