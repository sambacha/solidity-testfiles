contract BaseBase {
    function f(uint256 n) public virtual returns (uint256) {
        return 2 * n;
    }

    function s(uint256 n) public returns (uint256) {
        return 4 * n;
    }
}

contract Base is BaseBase {
    function f(uint256 n) public virtual override returns (uint256) {
        return 3 * n;
    }
}

contract Child is Base {
    function g(uint256 n) public returns (uint256) {
        // calling base-bse function of a virtual overridden function.
        return BaseBase.f(n);
    }

    function k(uint256 n) public returns (uint256) {
        // Calling base-base function of a non-virtual function.
        return BaseBase.s(n);
    }
}
// ====
// compileToEwasm: also
// ----
// g(uint256): 4 -> 8
// k(uint256): 4 -> 16
