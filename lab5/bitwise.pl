and(A,B):-
	X is A /\ B,
	write(X).
	
or(A,B):-
	X is A \/ B,
	write(X).
	
xor(A,B):-
	X is A xor B,
	write(X).
	
