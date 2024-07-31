% Predicate to calculate the sum of a list
sum_list([], 0).
sum_list([H|T], Sum) :-
    sum_list(T, SumTail),
    Sum is H + SumTail.

% Predicate to calculate the length of a list
list_length([], 0).
list_length([_|T], Length) :-
    list_length(T, LengthTail),
    Length is LengthTail + 1.

% Predicate to calculate the average of a list
average_list(List, Average) :-
    sum_list(List, Sum),
    list_length(List, Length),
    Length > 0,  % To avoid division by zero
    Average is Sum / Length.
