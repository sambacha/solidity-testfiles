contract C {
    constructor(uint256) {}
}

contract D is C(D.t = 2) {
    uint256 immutable t;
}
// ----
// TypeError 1581: (52-55): Cannot write to immutable here: Immutable variables can only be initialized inline or assigned directly in the constructor.
