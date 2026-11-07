

% Base case: empty list
deleteElement(_, [], []).

% If the head equals X, remove it
deleteElement(X, [X|T], Result) :-
    deleteElement(X, T, Result).

% If the head is different from X, keep it
deleteElement(X, [H|T], [H|Result]) :-
    X \= H,
    deleteElement(X, T, Result).