interface ParentA {}

interface ParentB {}

interface Sub is ParentA, ParentB {}

contract ListsA is Sub, ParentA {}
