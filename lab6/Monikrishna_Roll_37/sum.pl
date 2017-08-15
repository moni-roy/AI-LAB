sum([],0).
sum([X|List],Sum) :-
    sum(List,Sum1),
    Sum is X + Sum1.
