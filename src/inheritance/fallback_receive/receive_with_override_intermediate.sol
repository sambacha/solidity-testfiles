contract C {
    receive() external payable virtual {}
}

contract D is C {}

contract E is D {
    receive() external payable override {}
} // ----
