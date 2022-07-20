contract collatz {
    function run(uint256 x) public returns (uint256 y) {
        while ((y = x) > 1) {
            if (x % 2 == 0) x = evenStep(x); else x = oddStep(x);
        }
    }

    function evenStep(uint256 x) public returns (uint256 y) {
        return x / 2;
    }

    function oddStep(uint256 x) public returns (uint256 y) {
        return 3 * x + 1;
    }
}
// ====
// compileToEwasm: also
// ----
// run(uint256): 0 -> 0
// run(uint256): 1 -> 1
// run(uint256): 2 -> 1
// run(uint256): 8 -> 1
// run(uint256): 127 -> 1
