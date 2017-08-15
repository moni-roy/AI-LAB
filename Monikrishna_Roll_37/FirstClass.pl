sister(sue,gill).
parent(ann,sum).
parent(jue,ann).
male(jue).
female(ann).

grandfather(X,Z):- parent(X,Y),parent(Y,Z),male(X).
