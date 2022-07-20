contract Parent {
    constructor() {
        return;
    }
}

contract Child is Parent {
    uint256 public immutable baked = 123;
}
