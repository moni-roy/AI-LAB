summation(X,Y,S):- S is X+Y.
subtraction(X,Y,S):- S is X-Y.
multiplication(X,Y,M):- M is X*Y.
power(X,Y,P):- P is X**Y.
maximum(X,Y,Z,A):-
	B is max(X,Y),
	A is max(B,Z).

