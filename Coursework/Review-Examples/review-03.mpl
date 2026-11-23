# Selected original review examples: procedures, loops and number theory
restart:
(x,y):=(1,1):
f:=proc(n)
    local x;
    global y;
    x:=10; y:=10;
    return n*x*y;
end proc:
f(2),x,y;
for n from 3 to 7 do
    print(n^2);
    if n >= 4 then break; end if;
end do;
for n from 1 to 4 do
    if n >= 2 then next; end if;
    print(n^2);
end do;
for n from 1 to 100 do
    if 3^n > 10^5 then print(n); break; end if;
end do;
S:={}:
for i from 1 to 10 do
    for j from 1 to 10 do
        if i<j then S := S union {[i,j]}; end if;
    end do;
end do;
print(S);
