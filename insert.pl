insert_list(X,L,1,[X|L]).
insert_list(X,[H|T],K,[H|R]):- K>1,K1 is K-1,insert_list(X,T,K1,R).

delete_list(_, [], []).
delete_list(Element, [Element|T], Result) :-
    delete_list(Element, T, Result).
delete_list(Element, [H|T], [H|Result]) :-
    H \= Element,
    delete_list(Element, T, Result).

reverse_list(List, Reversed) :-
    reverse_list_acc(List, [], Reversed).

reverse_list_acc([], Acc, Acc).  % Base case: when the list is empty, the result is the accumulator
reverse_list_acc([H|T], Acc, Reversed) :-
    reverse_list_acc(T, [H|Acc], Reversed).  % Recursively add the head to the accumulator

% Define the maxlist predicate
maxlist([H|T], Max) :-
    maxlist(T, H, Max).

% Helper predicate with an accumulator
maxlist([], Max, Max).  % Base case: when the list is empty, the maximum is the accumulator
maxlist([H|T], Acc, Max) :-
    H > Acc, !,
    maxlist(T, H, Max).
maxlist([_|T], Acc, Max) :-  % If the head is not greater than the accumulator
    maxlist(T, Acc, Max).

