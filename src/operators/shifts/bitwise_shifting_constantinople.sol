contract C {
    function shl(uint256 a, uint256 b) public returns (uint256 c) {
        assembly {
            c := shl(b, a)
        }
    }

    function shr(uint256 a, uint256 b) public returns (uint256 c) {
        assembly {
            c := shr(b, a)
        }
    }

    function sar(uint256 a, uint256 b) public returns (uint256 c) {
        assembly {
            c := sar(b, a)
        }
    }
}
