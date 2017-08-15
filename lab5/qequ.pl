equ(A,B,C):-
(
	D is B*B-4*A*C,
	(
		D=0,write('r = '), X is -B/2/A, write(X);
		D>0, 
			X is (-B+sqrt(D))/2/A,
			Y is (-B-sqrt(D))/2/A,
			write('r1 = '),write(X),nl, 
			write('r2 = '), write(Y);
		R is -B/2/A,
		I is abs(sqrt(-D)/2/A),
		write('r1 = ('),write(R),write(', '),write(I),write(')'),nl,
		write('r2 = ('),write(R),write(', -'),write(I),write(')')
	)
).
	
	
    
