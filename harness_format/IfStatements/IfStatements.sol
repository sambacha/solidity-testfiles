contract IfStatements {
    function hi() public {
        if (simpleIf) return true;

        if (simpleIf)
        return (true, true, true, true, true, true, true, true, true, true, true);

        if (simpleIf) return true; else return false;

        if (simpleIf)
        return (true, true, true, true, true, true, true, true, true, true, true);
        else return false;

        if (simpleIf) return true; else return (
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false
        );

        if (simpleIf)
        return (true, true, true, true, true, true, true, true, true, true, true);
        else return (
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false
        );

        if (simpleIf) return true; else if (simpleElseIf) return (true, false);
        else return false;

        if (simpleIf)
        return (true, true, true, true, true, true, true, true, true, true, true);
        else if (simpleElseIf) return (true, false); else return false;

        if (simpleIf) return true; else if (simpleElseIf) return (true, false);
        else return (
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false
        );

        if (simpleIf)
        return (true, true, true, true, true, true, true, true, true, true, true);
        else if (simpleElseIf) return (true, false); else return (
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false
        );

        if (simpleIf) return true; else if (simpleElseIf)
        return (true, false, true, false, true, false, true, false, true, false);
        else return false;

        if (simpleIf)
        return (true, true, true, true, true, true, true, true, true, true, true);
        else if (simpleElseIf)
        return (true, false, true, false, true, false, true, false, true, false);
        else return false;

        if (simpleIf) return true; else if (simpleElseIf)
        return (true, false, true, false, true, false, true, false, true, false);
        else return (
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false
        );

        if (simpleIf)
        return (true, true, true, true, true, true, true, true, true, true, true);
        else if (simpleElseIf)
        return (true, false, true, false, true, false, true, false, true, false);
        else return (
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false
        );

        if (simpleIf) {
            return true;
        }

        if (simpleIf) {
            return true;
        } else return false;

        if (simpleIf) return true; else {
            return false;
        }

        if (simpleIf) {
            return true;
        } else {
            return false;
        }

        if (simpleIf) {
            return true;
        } else if (simpleElseIf) return (true, false); else return false;

        if (simpleIf) return true; else if (simpleElseIf) return (true, false);
        else {
            return false;
        }

        if (simpleIf) {
            return true;
        } else if (simpleElseIf) return (true, false); else {
            return false;
        }

        if (simpleIf) {
            return true;
        } else if (simpleElseIf) {
            return (true, false);
        } else return false;

        if (simpleIf) return true; else if (simpleElseIf) {
            return (true, false);
        } else {
            return false;
        }

        if (
            veryComplicatedComputation(variable1, variable2) == (400 + 500) * 1000
        ) {
            return true;
        }

        if (simpleIf) {
            return true;
        } else if (
            veryComplicatedComputation(variable3, variable4) == (400 + 500) * 1000
        ) {
            return (true, false);
        } else return false;

        if (
            veryComplicatedComputation(variable1, variable2) == (400 + 500) * 1000
        ) {
            return true;
        } else if (simpleElseIf) {
            return (true, false);
        } else return false;

        if (
            veryComplicatedComputation(variable1, variable2) == (400 + 500) * 1000
        ) {
            return true;
        } else if (
            veryComplicatedComputation(variable3, variable4) == (400 + 500) * 1000
        ) {
            return (true, false);
        } else return false;

        if (simpleIf) if (simpleIfWithinIf) return true; else return false;

        if (simpleIf) if (simpleIfWithinIf) {
            return true;
        } else {
            return false;
        }

        if (simpleIf) {
            if (simpleIfWithinIf) {
                return true;
            } else {
                return false;
            }
        }

        if (simpleIf) {
            if (simpleIfWithinIf) return true;
        } else return false;

        if (simpleIf) {
            if (simpleIfWithinIf) {
                return true;
            }
        } else {
            return false;
        }

        if (simpleIf) if (simpleIfWithinIf) return true; else return false; else
        return false;

        if (simpleIf) if (simpleIfWithinIf) {
            return true;
        } else {
            return false;
        } else {
            return false;
        }

        if (simpleIf) {
            if (simpleIfWithinIf) {
                return true;
            } else {
                return false;
            }
        } else return false;
    }
}
