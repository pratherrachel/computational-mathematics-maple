# Maple source extracted from a Classic Maple worksheet (.mws).
# Commands are kept in worksheet order; worksheet output and formatting are excluded.
# Source: Lect5 H.W.[2727].mws
# Review before execution: some code is exploratory or incomplete.

restart:

with(LinearAlgebra);

A:=RandomMatrix(3,3);

EvA:=simplify(evalf(Eigenvalues(A)));

B:=RandomMatrix(3,3);

EvB:=simplify(evalf(Eigenvalues(B)));

C:=

RandomMatrix(3,3);

EvC:=simplify(evalf(Eigenvalues(C)));

E:=

RandomMatrix(3,3);

EvE:=simplify(evalf(Eigenvalues(E)));

F:=

RandomMatrix(3,3);

EvF:=simplify(evalf(Eigenvalues(F)));

G:=

RandomMatrix(3,3);

EvG:=simplify(evalf(Eigenvalues(G)));

H:=

RandomMatrix(3,3);

EvH:=simplify(evalf(Eigenvalues(H)));

J:=

RandomMatrix(3,3);

EvJ:=simplify(evalf(Eigenvalues(J)));

A3:=Matrix([[0,1,1],[1,0,1],[1,1,0]]);

A4:=

Matrix([[0,1,1,1],[1,0,1,1],[1,1,0,1],[1,1,1,0]]);

A5:=

Matrix([[0,1,1,1,1],[1,0,1,1,1],[1,1,0,1,1],[1,1,1,0,1],[1,1,1,1,0]]);

D_A3:=Determinant(A3); D_A4:=Determinant(A4); D_A5:=Determinant(A5);

CP_A3:=CharacteristicPolynomial(A3,x); CP_A4:=CharacteristicPolynomial(A4,x); CP_A5:=CharacteristicPolynomial(A5,x);

A3_E:=Eigenvalues(A3);

A4_E:=

Eigenvalues(A4);

A5_E:=

Eigenvalues(A5);

list_to_set:=proc(n::list);

a:=nops(n);

S:={};

for i to a do

if n[i]=1 then S:= S union {i}; end if;

end do;

return S;

end proc:

list_to_set([1,0,1,0,1]);

L:=[1,2,3,4,5,6,7,8,9]; whattype(L); whattype(eval(L));

S:={1,2,3,4,5,6}; whattype(S); whattype(eval(S));

A:=Array([1,2,3]); whattype(A); whattype(eval(A));

# Worksheet note: matrix

M:=Matrix([[1,1,1],[2,2,2],[3,3,3]]); whattype(M); whattype(eval(M));
