contract D {
    uint256 immutable t;

    modifier m(uint256) {
        _;
    }

    constructor() m(t = 2) {}
}
// ----
// TypeError 1581: (77-78): Cannot write to immutable here: Immutable variables can only be initialized inline or assigned directly in the constructor.
