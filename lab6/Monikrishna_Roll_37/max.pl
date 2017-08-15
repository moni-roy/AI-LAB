maximum([],Max):-
    write("Maximum No in List is:: ",Max),nl.
maximum([H|T],Max):-
    H>Max,
    N = H,
    maximum(T,N).
maximum(L,Max):-
    maximum(L,Max).
