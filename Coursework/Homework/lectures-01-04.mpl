# Selected Maple commands transcribed from the uploaded "HW for Lec 1-4" worksheet.
# NOTE: The source uses encoded 2-D input (47 code cells). This is a selected,
# human-readable transcription of identifiable examples, NOT a complete export.
# Keep the original worksheet privately until all remaining code is exported.

# Assignment One — exact integration and numerical evaluation
restart;
int(x^2*sqrt(-x^2 + 1), x = 0 .. 1);
evalf(%);
x := int(x^2*sqrt(-x^2 + 1), x = 0 .. 1);
y := evalf(%);

# Numeric precision and algebraic equations
restart;
x := sqrt(2) + sqrt(3);
evalf[3](x);
evalf[4](x);
evalf(Pi);
solve(x^3 - 4*x^2 - 4*x - 5 = 0);
Eqn := x^3 - 4*x^2 - 4*x - 5 = 0;
solve(Eqn);

# Symbolic differentiation and integration
restart;
int(sin(x)*cos(x)^2, x);
int(sin(x)*cos(x)^2, x = 1 .. 3);
evalf[10](%);
Diff(x*exp(x)*sin(x), x) = diff(x*exp(x)*sin(x), x);

# Three ways of representing a function
restart;
f := x -> sin(x)*(exp(x) + x^2 + x + 1);
evalf[10](f(0));
evalf[10](f(1));
restart;
f := unapply(sin(x)*(exp(x) + x^2 + x + 1), x);
evalf[10](f(0));
evalf[10](f(1));
restart;
f := proc(x) sin(x)*(exp(x) + x^2 + x + 1); end proc;
evalf[10](f(0));
evalf[10](f(1));

# Assignment Two — iteration and elementary number theory
x_sum := 0;
for n from 2 to 100 do
    x_sum := x_sum + evalf((2/3)^n);
    evalf(x_sum);
end do;
x_sum;

# Primality-checking procedure and test cases
restart;
ISPRIME := proc(n)
    local d;
    if n < 2 then return false; end if;
    if n = 2 then return true; end if;
    if 2 < n then
        for d from 2 to n - 1 do
            if n mod d = 0 then return false; end if;
        end do;
        return true;
    end if;
end proc;
ISPRIME(1); ISPRIME(2); ISPRIME(3); ISPRIME(4);
ISPRIME(11); ISPRIME(111); ISPRIME(531);
ISPRIME(7919); ISPRIME(15689); ISPRIME(262681);

# Identify 2-pseudoprimes less than 2000
two_pseudoprime := proc(n)
    if 2 < n and modp(2^(n - 1), n) = 1 and isprime(n) = false then
        return true;
    end if;
    return false;
end proc;

# Sum primes to a threshold
PRIMESUM := proc(n)
    local SUM, k;
    SUM := 0;
    for k to n do
        if isprime(k) = true then SUM := SUM + k; end if;
    end do;
    return SUM;
end proc;
PRIMESUM(2); PRIMESUM(4); PRIMESUM(10); PRIMESUM(1000);

# Additional 2-D worksheet code has not been transcribed in this file.
