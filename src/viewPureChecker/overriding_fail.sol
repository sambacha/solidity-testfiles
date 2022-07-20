contract D {
    uint256 x;

    function f() public view virtual {
        x;
    }

    function g() public pure virtual {}
}

contract C1 is D {
    function f() public override {}
    function g() public view virtual override {}
}

contract C2 is D {
    function g() public override {}
}
// ----
// TypeError 6959: (134-165): Overriding function changes state mutability from "view" to "nonpayable".
// TypeError 6959: (170-214): Overriding function changes state mutability from "pure" to "view".
// TypeError 6959: (240-271): Overriding function changes state mutability from "pure" to "nonpayable".
