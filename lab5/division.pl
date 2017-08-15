division(A,B):-
	B=0, write('INFINITY');
	B>0, X is A//B,
	write(X).
	
