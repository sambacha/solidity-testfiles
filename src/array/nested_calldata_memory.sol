pragma abicoder v2;

contract Test {
    struct shouldBug {
        bytes[2] deadly;
    }

    function killer(bytes[2] calldata weapon) external pure {
        shouldBug(weapon);
    }
} // ----
