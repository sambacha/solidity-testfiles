contract C {
    function f(uint256 storage a) public {
        a = f;
    }
}
// ----
// TypeError 6651: (28-42): Data location can only be specified for array, struct or mapping types, but "storage" was given.
