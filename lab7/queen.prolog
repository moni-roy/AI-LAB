queens(N, Rs) :-
    bagof(X, between(1,N,X), Qs),
    path(Qs,[],Rs).

path(Qs,Xs,Rs) :- 
	Qs = [] -> Rs = Xs ;
	select(Q,Qs,Qe),
	%write(Q),
	%write(Xs),nl,nl,
	safe_queens(Xs, Q, 1), 
	%write(Q),
	%write(Xs),nl,
	path(Qe,[Q|Xs],Rs).

safe_queens([], _, _).
safe_queens([Q|Qs], Q0, D0) :-
    abs(Q0 - Q) =\= D0,
    D1 = D0 + 1,
    %write(D0),nl,
    %write(Q0),nl,
    safe_queens(Qs, Q0, D1).
