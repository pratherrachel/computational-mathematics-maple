# This text-based .mpl file is readable on GitHub.
# Original calculation order is retained where practical; 
# Demonstration only, not production cryptography.
restart:
# Pollard rho worked example (iterations shown in worksheet)
N := 8051:
f := x -> (x^2 + 1) mod N:
x := 2: y := 2:
for i from 1 to 3 do
    x := f(x):
    y := f(f(y)):
    g := gcd(abs(x-y), N):
    printf("iteration %d: gcd = %d\n", i, g);
    if g > 1 and g < N then
        printf("Factors: %d and %d\n", g, N/g);
        break;
    end if;
end do:
# Expected nontrivial factor: 97; 8051 = 97 * 83.
