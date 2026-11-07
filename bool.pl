% AND truth table
and_gate(0, 0, 0).
and_gate(0, 1, 0).
and_gate(1, 0, 0).
and_gate(1, 1, 1).

% NOT truth table
not_gate(0, 1).
not_gate(1, 0).

% OR truth table
or_gate(0, 0, 0).
or_gate(0, 1, 1).
or_gate(1, 0, 1).
or_gate(1, 1, 1).

% Boolean expression
boolean(A, B, Result) :-
    and_gate(A, B, X),
    not_gate(A, NotA),
    not_gate(B, NotB),
    and_gate(NotA, NotB, Y),
    or_gate(X, Y, Result).