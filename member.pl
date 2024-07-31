mem_list([X|_],X).
mem_list([_|T],X):-
    mem_list(T,X).

