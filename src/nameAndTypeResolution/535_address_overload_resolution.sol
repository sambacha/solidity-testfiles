contract C {
    function balance() public returns (uint256) {
        this.balance; // to avoid pureness warning
        return 1;
    }

    function transfer(uint256 amount) public {
        payable(this).transfer(amount); // to avoid pureness warning
    }

    receive() external payable {}
}

contract D {
    function f() public {
        uint256 x = (new C()).balance();
        x;
        (new C()).transfer(5);
    }
}
// ----
// Warning 2018: (17-134): Function state mutability can be restricted to view
