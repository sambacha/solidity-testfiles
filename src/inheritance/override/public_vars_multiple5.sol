contract ERC20 {
    function balanceOf(address, uint256)
        external
        view
        virtual
        returns (uint256)
    {}

    function balanceOf(uint256) external view virtual returns (uint256) {}

    function balanceOf() external view virtual returns (uint256) {}
}

contract C is ERC20 {
    mapping(address => uint256) public override balanceOf;
}
