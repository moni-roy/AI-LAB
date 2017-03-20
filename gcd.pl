gcd(A,B,GCD):- A=B, GCD=A.
gcd(A,B,GCD) :- A<B, G is B-A ,gcd(A, G, GCD).
gcd(A,B,GCD):- A>B, gcd(B,A,GCD).
