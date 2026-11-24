# Maple source extracted from a Classic Maple worksheet (.mws).
# Commands are kept in worksheet order; worksheet output and formatting are excluded.
# Source: Lect5-6 H.W.[2722].mws
# Review before execution: some code is exploratory or incomplete.

restart:

with(LinearAlgebra):

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

restart:

with(LinearAlgebra):

Check:=proc(A::Matrix);

is(`*`(convert(Eigenvalues(A), list)[ ])=Determinant(A));

end proc:

for i from 1 to 8 do:

(i,Check(RandomMatrix(3,3))):

end do;

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

list_to_set:=proc(n::list)

local a, S, i;

a:=nops(n);

S:={};

for i to a \+do

if n[i]=1 then S:= S union {i}; end if;

end do;

return S;

end proc:

list_to_set([1,0,1,0,1]);

restart:

set_to_list:=proc(s::set,n)

local i, L;

#a:=nops(s);

#b:=max(s);

#L:=[];

for i from 1 to n do

if i in s then L[i]:=1;

else L[i]:= 0; end if;

end do;

return [seq(L[i],i=1..n)];

end proc:

set_to_list({1,5,7},10);

[r];

r:=[1,2,3,4,5];

has([r],2);

L:=[1,2,3,4,5,6,7,8,9]; whattype(L); whattype(eval(L));

S:={1,2,3,4,5,6}; whattype(S); whattype(eval(S));

A:=Array([1,2,3]); whattype(A); whattype(eval(A));

# Worksheet note: matrix

M:=Matrix([[1,1,1],[2,2,2],[3,3,3]]); whattype(M); whattype(eval(M));

J:=proc(n)

local i, even, odd, Sol;

if n=1 \+then

return n;

end if;

even:=0;

odd:=0;

for i from 1 to n do

if \+type(i, even)=true then

even:=(2*(i/2))-1;

Sol:=even;

else

odd:=(2*((i-1)/2))+1;

Sol:=odd

end if;

end do;

even; odd;

end proc:

J(1); J(3);

probtwo:=proc()

local i, L, A, SUM;

L:=sort([args]):

SUM:=0;

for i from 2 to nargs-1 do

SUM:=SUM+L[i];

end do;

return evalf(SUM/(nargs-2));

end proc:

probtwo(50, 40, 40, 40, 40, 22, 37, 1002, 25, 10);
