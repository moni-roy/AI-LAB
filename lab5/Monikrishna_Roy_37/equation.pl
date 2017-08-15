suru:-
     read(A),
     (   A = 0, write('Not a quadratic equation');
         read(B),
         read(C),
         D is B*B-4*A*C,
         (   D = 0, write('x = '), X is -B/2/A, write(X);
             D > 0, write('x1 = '), X1 is (-B+sqrt(D))/2/A, write(X1), nl, write('x2 = '), X2 is (-B-sqrt(D))/2/A, write(X2);
             R is -B/2/A, I is abs(sqrt(-D)/2/A), 
             write('x1 = ('), write(R), write(', '), write(I), write(')'), nl,
             write('x2 = ('), write(R), write(', -'), write(I), write(')')
         )
     ).
