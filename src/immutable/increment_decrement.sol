contract C {
    uint256 immutable x;
    uint256 immutable y;

    constructor() {
        ++x;
        --y;
    }
}
// ----
// TypeError 3969: (77-78): Immutable variables must be initialized using an assignment.
// TypeError 3969: (86-87): Immutable variables must be initialized using an assignment.
