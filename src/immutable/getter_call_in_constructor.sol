contract A {
    uint256 public immutable x = 1;
    uint256 public y;

    constructor() {
        y = this.x();
    }
}

contract C {
    function f() public returns (bool) {
        try new A() { return false; }
        catch {
            return true;
        }
    }
}
// ====
// EVMVersion: >=tangerineWhistle
// ----
// f() -> true
