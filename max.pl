max(X, Y, Max) :-
    X >= Y,
    Max is X.
max(X, Y, Max) :-
    X < Y,
    Max is Y.
