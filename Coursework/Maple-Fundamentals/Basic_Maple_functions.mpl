# Basic Maple functions
restart:
2 + 2;
2^231;
gcd(3, 324);
a := 10;
a + 10;
gcd(a, 234);
my_proc := proc(n) return 2*n; end proc;
my_proc(2); my_proc(4);
my_proc2 := proc(n)
    local i, j, k;
    i := n; j := 2*i; k := 2*j;
    return k;
end proc;
my_proc2(2);
n := 0;
for i to 10 do n := n + 1; end do;
n;
n := 0;
while n < 10 do n := n + 1; end do;
n;
my_fact := proc(n)
    local i, ret_value;
    ret_value := 1;
    for i to n do ret_value := ret_value*i; end do;
    return ret_value;
end proc;
my_fact(3);
n := 2;
if n < 4 then n := n + 1; end if;
n;
n := 2;
if n < 0 then n := n + 10;
elif n < 1 then n := n - 1;
else n := n + 1;
end if;
n;
my_rec_fact := proc(n)
    if n = 0 then return 1;
    else return n*my_rec_fact(n-1);
    end if;
end proc;
my_rec_fact(3);
