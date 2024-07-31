list([],L,L).
list([H|T1], L2, [H|T3]):-
    list(T1,L2,T3).
