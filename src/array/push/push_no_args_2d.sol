contract C {
    uint256[][] array2d;

    function l() public returns (uint256) {
        return array2d.length;
    }

    function ll(uint256 index) public returns (uint256) {
        return array2d[index].length;
    }

    function a(uint256 i, uint256 j) public returns (uint256) {
        return array2d[i][j];
    }

    function f(uint256 index, uint256 value) public {
        uint256[] storage pointer = array2d.push();
        for (uint256 i = 0; i <= index; ++i) pointer.push();
        pointer[index] = value;
    }

    function lv(uint256 value) public {
        array2d.push().push() = value;
    }
}
// ----
// l() -> 0
// f(uint256,uint256): 42, 64 ->
// gas irOptimized: 112482
// gas legacy: 108105
// gas legacyOptimized: 101987
// l() -> 1
// ll(uint256): 0 -> 43
// a(uint256,uint256): 0, 42 -> 64
// f(uint256,uint256): 84, 128 ->
// gas irOptimized: 116270
// gas legacy: 107525
// gas legacyOptimized: 96331
// l() -> 2
// ll(uint256): 1 -> 85
// a(uint256,uint256): 0, 42 -> 64
// a(uint256,uint256): 1, 84 -> 128
// lv(uint256): 512 ->
// a(uint256,uint256): 2, 0 -> 512
