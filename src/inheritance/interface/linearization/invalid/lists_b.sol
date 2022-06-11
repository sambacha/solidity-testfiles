interface ParentA {}

interface ParentB {}

interface Sub is ParentA, ParentB {}

contract ListsB is Sub, ParentB {}
