% Facts
male(john).
male(paul).
male(mike).
male(tom).

female(mary).
female(anna).
female(lucy).
female(susan).

parent(john, paul).
parent(john, anna).
parent(mary, paul).
parent(mary, anna).
parent(paul, mike).
parent(paul, lucy).
parent(anna, tom).
parent(susan, tom).

% Rules

% Sibling relationship
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

% Grandparent relationship
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).

% Cousin relationship
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).

% Uncle/Aunt relationship
uncle_aunt(X, Y) :- sibling(X, Z), parent(Z, Y).

% Niece/Nephew relationship
niece_nephew(X, Y) :- parent(Z, X), sibling(Z, Y).

% Ancestor relationship
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% Descendant relationship
descendant(X, Y) :- ancestor(Y, X).

