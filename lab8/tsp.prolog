tsp(Towns, _, _):-
  retract_all(bestroute(_)),
  assert(bestroute(r([], 2147483647))),
  route(Towns, Route, Distance),
  bestroute(r(_, BestSoFar)),
  Distance < BestSoFar,
  retract(bestroute(r(_, BestSoFar))),
  assert(bestroute(r(Route, Distance))),
  fail.
tsp(_, Route, Distance):-
  retract(bestroute(r(Route, Distance))), !.
  
route([First|Towns], [First|Route], Distance):-
  route_1(Towns, First, First, 0, Distance, Route).

route_1([], Last, First, Distance0, Distance, []):-
  distance(Last, First, Distance1),
  Distance is Distance0 + Distance1.
route_1(Towns0, Town0, First, Distance0, Distance, [Town|Towns]):-
  remove(Town, Towns0, Towns1), 
  distance(Town0, Town, Distance1),
  Distance2 is Distance0 + Distance1,
  route_1(Towns1, Town, First, Distance2, Distance, Towns).

distance(X, Y, D):-X @< Y, !, e(X, Y, D).
distance(X, Y, D):-e(Y, X, D).

retract_all(X):-retract(X), retract_all(X).
retract_all(X).

e(a,b,11). e(a,c,41). e(a,d,27). e(a,e,23). e(a,f,43). e(a,g,15). e(a,h,20).
e(b,c,32). e(b,d,16). e(b,e,21). e(b,f,33). e(b,g, 7). e(b,h,13).
e(c,d,25). e(c,e,49). e(c,f,35). e(c,g,34). e(c,h,21).
e(d,e,26). e(d,f,18). e(d,g,14). e(d,h,19).
e(e,f,31). e(e,g,15). e(e,h,34).
e(f,g,28). e(f,h,36).
e(g,h,19).
