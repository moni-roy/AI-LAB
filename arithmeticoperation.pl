summation(X,Y):- 
	S is X+Y,
	write(S).

subtraction(X,Y):- 
	S is X-Y,
	write(S).

multiplication(X,Y):- 
	M is X*Y,
	write(M).

power(X,Y):- 
	P is X**Y,
	write(P).

maximum(X,Y,Z):-
	B is max(X,Y),
	A is max(B,Z),
	write(A).

