list(1,[X|_],X).
list(K,[_|T],X):-
    K1 is K-1,list(K1,T,X).

