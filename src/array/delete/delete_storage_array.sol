contract C {
    uint256[] data;

    function len() public returns (uint256 ret) {
        data.push(234);
        data.push(123);
        delete data;
        assembly {
            ret := sload(data.slot)
        }
    }

    function val() public returns (uint256 ret) {
        assembly {
            sstore(0, 2)
            mstore(0, 0)
            sstore(keccak256(0, 32), 234)
            sstore(add(keccak256(0, 32), 1), 123)
        }

        assert(data[0] == 234);
        assert(data[1] == 123);

        delete data;

        uint256 size = 999;

        assembly {
            size := sload(0)
            mstore(0, 0)
            ret := sload(keccak256(0, 32))
        }
    }
}
// ----
// len() -> 0
// val() -> 0
