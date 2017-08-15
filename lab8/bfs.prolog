/* path(First, Last, Path, Length) is true if Path is a path of length     */
/*   Length from the First vertex to the Last vertex in the graph defined  */
/*   by e/3.                                                               */
path(First, Last, Path, Length):-
  path_1(First, Last, [], 0, Path, Length).

path_1(Last, Last, Path, Length, [Last|Path], Length).
path_1(First, Last, Path0, Length0, Path, Length):-
  e(NextToLast, Last, Length1), 
  \+member(NextToLast, Path0), 
  Length2 is Length0 + Length1,
  path_1(First, NextToLast, [Last|Path0], Length2, Path, Length).

/* Sample data */
/* e.g. path(a0, a1, Path, Length). */
e(a0,a1,1).
e(a0,a2,1).
e(a0,a4,1).
e(a1,a2,1).
e(a1,a3,1).
e(a2,a1,1).
e(a2,a3,1).
e(a4,a1,1).
e(a4,a2,1).
e(a4,a3,1).
