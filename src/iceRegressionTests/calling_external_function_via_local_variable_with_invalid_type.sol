contract C {
    function f() public {
        function() external returns (function() internal) getCallback;
        getCallback();
    }
}
