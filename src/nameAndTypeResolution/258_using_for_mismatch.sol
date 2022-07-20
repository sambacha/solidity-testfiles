library D {
    function double(bytes32 self) public returns (uint256) {
        return 2;
    }
}

contract C {
    using D for uint256;

    function f(uint256 a) public returns (uint256) {
        return a.double();
    }
}
// ----
// TypeError 9582: (177-185): Member "double" not found or not visible after argument-dependent lookup in uint256.
