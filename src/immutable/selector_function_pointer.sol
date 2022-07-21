contract C {
    uint256 immutable x;

    constructor() {
        x = 3;
        readX().selector;
    }

    function f() external view returns (uint256) {
        return x;
    }

    function readX()
        public
        view
        returns (function() external view returns(uint) _f)
    {
        _f = this.f;
    }
} // ----
