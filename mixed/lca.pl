ancestor(A,B):- 
	parent(A,B).

ancestor(A,B):- 
	parent(X,B), 
	ancestor(A,X).

lca(A,B,LCA):- 
	ancestor(LCA,A),
	ancestor(LCA,B).

lca(A,B,LCA):- 
	A=B, 
	LCA=A.

lca(A,B,LCA):- 
	ancestor(A,B), 
	LCA = A.

lca(A,B,LCA):- 
	ancestor(B,A), 
	LCA = B.

parent(a, b).
parent(a, c).
parent(b, d).
parent(b, e).
parent(c, f).
parent(c, g).
parent(d, h).
parent(d, i).
parent(d, j).
parent(e, k).
parent(f, l).
parent(f, m).
parent(g, n).
parent(g, o).
parent(g, p).
parent(g, q).
parent(k, r).
parent(k, s).
parent(m, t).
parent(m, u).
parent(m, v).
parent(o, w).
parent(p, x).
parent(x, y).
parent(x, z).
