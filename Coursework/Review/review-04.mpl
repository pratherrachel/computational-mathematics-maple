# Selected original commands from Review Questions 04
restart:
x||1:=10;
cat(x,2):=20;
seq(ithprime(k),k=1..30);
nops([23,2,5,30,55,1,2]);
convert([1,2,3,4],set);
List:=[2,4,6,2,8,10];
revList:=[seq(List[-i],i=1..nops(List))];
OldSeq1:=1,3,5,7;
OldSeq2:=2,4,6,8,10;
NewSeq:=OldSeq1, OldSeq2;
numdigits:=proc(n)
    local x,c,i,k,j;
    Digits:=n:
    x:=evalf(sqrt(3),n):
    x:=floor(10^(n-1)*x):
    x:=convert(x,base,10):
    for i from 0 to 9 do c[i]:=0; end do;
    for k from 1 to n do
        j:=x[k]; c[j]:=c[j]+1;
    end do:
    [seq(c[j],j=0..9)];
end proc:
numdigits(100);
