contract C {
    uint256 public stateDecimal = 0x20;
}

contract D {
    bool public stateBool = true;
    uint256 public stateDecimal = 42;
    bytes32 public stateBytes = "\x42\x00\xef";

    function internalStateDecimal() public returns (uint256) {
        return (new C()).stateDecimal();
    }

    function update(
        bool _bool,
        uint256 _decimal,
        bytes32 _bytes
    )
        public
        returns (
            bool,
            uint256,
            bytes32
        )
    {
        stateBool = _bool;
        stateDecimal = _decimal;
        stateBytes = _bytes;
        return (stateBool, stateDecimal, stateBytes);
    }
}
