library Set {
    struct Data {
        mapping(uint256 => bool) flags;
    }

    function insert(Data storage self, uint256 value) public returns (bool) {
        if (self.flags[value]) return false; // already there
        self.flags[value] = true;
        return true;
    }
} // ----
