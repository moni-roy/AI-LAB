max([R],R).
max([X|XX],R):-
	max(XX,T),
	(X>T -> R=X;R=T).
