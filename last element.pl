list([X],X).
list([_|T],X):-
    list(T,X).
