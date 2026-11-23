# This text-based .mpl file is readable on GitHub.
# Original calculation order is retained where practical; no execution verified.
# Demonstration only, not production cryptography.
restart:
# Supplied ElGamal encryption/decryption example
p := 101: g := 2: x := 7:
h := g^x mod p:
m := 21:
y := 40:
c1 := g^y mod p:
s := h^y mod p:
c2 := s*m mod p:
c := [c1, c2];
# Recover the message using inverse of shared secret
my_s := c1^x mod p:
my_m := c2 * (1/my_s mod p) mod p:
evalb(my_m = m);
# Expected result: c = [36,47], my_s = 84, my_m = 21.
