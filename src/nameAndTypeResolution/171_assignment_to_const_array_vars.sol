contract C {
    uint256[3] constant x = [uint256(1), 2, 3];
}
// ----
// TypeError 9259: (17-53): Only constants of value type and byte array type are implemented.
