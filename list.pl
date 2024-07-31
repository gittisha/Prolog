list_length([], 0).  % Base case: the length of an empty list is 0
list_length([_|T], N) :-
    list_length(T, N1),  % Recursively find the length of the tail
    N is N1 + 1.  % The length of the list is 1 plus the length of the tail
