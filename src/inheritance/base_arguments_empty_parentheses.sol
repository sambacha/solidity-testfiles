contract Base {
    constructor(uint256) {}
}

contract Derived is Base(2) {}

contract Derived2 is Base(), Derived() {}
