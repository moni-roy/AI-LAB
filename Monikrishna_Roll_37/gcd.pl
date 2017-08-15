gcd(A,B,GCD):- 
	B=0, 
	GCD=A.

gcd(A,B,GCD) :-
 	A<B, 
	G is B mod A,
	gcd(A, G, GCD).

gcd(A,B,GCD):- 
	A>B,
	gcd(B,A,GCD).

