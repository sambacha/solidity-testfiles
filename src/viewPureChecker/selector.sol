contract C {
    uint256 public x;

    function f() public payable {}

    function g() public pure returns (bytes4) {
        return this.f.selector ^ this.x.selector;
    }

    function h() public view returns (bytes4) {
        x;
        return this.f.selector ^ this.x.selector;
    }
} // ----
