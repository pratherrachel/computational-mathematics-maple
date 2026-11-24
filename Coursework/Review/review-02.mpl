# Selected original commands from Review Questions 02
restart:
for i from 5 to 10 do i^2; end do;
for i to 100 do
    n := 2*i^3;
    r := modp(n,11);
    if r = 3 then print(i); end if;
end do;
f := proc(x)
    if x<0 then -1;
    elif x=0 then 0;
    else 1;
    end if;
end proc;
ISPRIME := proc(n)
    local k;
    for k from 2 to n-1 do
        if n mod k=0 then return false; end if;
    end do;
    return true;
end proc;
SUM := proc(n)
    local total,k;
    total := 0;
    for k from 1 to n do
        if isprime(k)=true then total := total+k; end if;
    end do;
    return total;
end proc;
SUM(10);
