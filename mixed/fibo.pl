fibo(X,Y):-
	X<3,
	Y=1.
fibo(X,Y):-
	fibo(X-1,Y1),
 	fibo(X-2,Y2),
	Y is Y1+Y2.
