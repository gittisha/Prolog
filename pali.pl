% Predicate to check if a list is a palindrome
palindrome(List) :-
    reverse_list(List, ReversedList),
    List = ReversedList.

% Predicate to reverse a list using an accumulator
reverse_list(List, Reversed) :-
    reverse_list_acc(List, [], Reversed).

% Helper predicate to reverse a list with an accumulator
reverse_list_acc([], Acc, Acc).  % Base case: when the list is empty, the result is the accumulator
reverse_list_acc([H|T], Acc, Reversed) :-
    reverse_list_acc(T, [H|Acc], Reversed).  % Recursively add the head to the accumulator

% Predicate to check if a list has an even length
evenlen(List) :-
    list_length(List, Length),
    0 is Length mod 2.

% Predicate to check if a list has an odd length
oddlen(List) :-
    list_length(List, Length),
    1 is Length mod 2.

% Helper predicate to calculate the length of a list
list_length([], 0).  % Base case: the length of an empty list is 0
list_length([_|T], Length) :-
    list_length(T, LengthTail),
    Length is LengthTail + 1.
