contract I {
    modifier f() virtual {_;}
}

contract J {
    modifier f() virtual {_;}
}

contract IJ is I, J {
    modifier f() virtual override(I, J) {_;}
}

contract A is IJ {
    modifier f() override {_;}
}

contract B is IJ {}

contract C is A, B {}
