contract C {
    function f() public pure {
        assembly {
      function g() -> a,b, c {}
      let a, sub, mov := g()
    }
    }
}
