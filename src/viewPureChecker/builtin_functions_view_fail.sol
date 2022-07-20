contract C {
    function f() public view {
        payable(this).transfer(1);
    }

    function g() public view {
        require(payable(this).send(2));
    }

    function h() public view {
        selfdestruct(payable(this));
    }

    function i() public view {
        (bool success,) = address(this).delegatecall("");
        require(success);
    }

    function j() public view {
        (bool success,) = address(this).call("");
        require(success);
    }

    receive() external payable {}
}
// ----
// TypeError 8961: (52-77): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (132-153): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (201-228): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (293-323): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (414-436): Function cannot be declared as view because this expression (potentially) modifies the state.
