interface IBase {
    function foo() external view;
}

contract Base is IBase {
    function foo() public view virtual {}
}

interface IExt is IBase {}

contract Ext is IExt, Base {}

contract Impl is Ext {
    function foo() public view override (IBase, Base) {}
} // ----
