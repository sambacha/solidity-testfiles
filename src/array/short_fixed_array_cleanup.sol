contract c {
    uint256 spacer1;
    uint256 spacer2;
    uint256[3] data;

    function fill() public {
        for (uint256 i = 0; i < data.length; ++i) data[i] = i + 1;
    }

    function clear() public {
        delete data;
    }
}
// ====
// compileToEwasm: also
// ----
// storageEmpty -> 1
// fill() ->
// storageEmpty -> 0
// clear() ->
// storageEmpty -> 1
