contract C {
    function f(int16 a, uint16 b) public returns (int256) {
        return a >> b;
    }
}
