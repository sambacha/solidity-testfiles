contract A {
    uint256 public x;
    fallback(bytes calldata _input) external returns (bytes memory) {
        x = _input.length;
        return "";
    }

    function f() public returns (bool, bytes memory) {
        (bool success, bytes memory retval) = address(this).call("abc");
        return (success, retval);
    }
}
