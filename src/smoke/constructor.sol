contract C {
    uint256 public state = 0;
    constructor(uint256 _state) payable {
        state = _state;
    }
    function balance() public payable returns (uint256) {
        return address(this).balance;
    }

    function update(uint256 _state) public {
        state = _state;
    }
}
