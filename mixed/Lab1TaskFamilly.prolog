parent(Z,Y) :- father(Z,Y) ; mother(Z,Y).

sibling(X,Y) :- parent(A,X), parent(A,Y), not(X = Y).
sister(X,Y) :- sibling(X,Y), female(X), not(X = Y).
brother(X,Y) :- sibling(X,Y), male(X), not(X = Y).

grandparent(C,D) :- parent(C,E), parent(E,D).

aunt(X,Y) :- parent(Z,Y), sister(X,Z). 
aunt(X,Y) :- female(X), sibling(X, Z), parent(Z, Y).
uncle(X,Y) :- parent(Z,Y), brother(X,Z). 

male(dijendra).
male(bikash).
male(hari).
male(ripan).
male(moni).
male(kashob).
male(dibyo).
male(sanjoy).
male(gonesh).

female(rupa).
female(alo).
female(kobita).
female(amita).
female(sujata).
female(probita).
female(pushpo).
female(choiti).
female(dipa).
female(anjoli).

mother(rupa, bikash).
mother(rupa, hari).
mother(rupa, ripan).
mother(rupa, kashob).
mother(rupa, moni).
mother(rupa, sujata).
mother(rupa, alo).
mother(rupa, kobita).
mother(rupa, amita).

mother(alo, sanjoy).
mother(kobita, probita).
mother(kobita, pushpo).
mother(amita, choiti).
mother(dipa, dibyo).

father(bikash, dibyo).
father(gonesh, dijendra).
father(dijendra, bikash).
father(dijendra, hari).
father(dijendra, ripan).
father(dijendra, kashob).
father(dijendra, moni).
father(dijendra, sujata).
father(dijendra, alo).
father(dijendra, kobita).
father(dijendra, amita).
