# Educational Maple example transcribed from the supplied worksheet.
# This text-based .mpl file is readable on GitHub.
# Original calculation order is retained where practical; no execution verified.
# Demonstration only, not production cryptography.
restart:
# Public key parameters
 e := 23: N := 1073:
# Private exponent (small classroom example)
d := 263:
# Message and RSA signature
m := 43:
s := m^d mod N;
# Verification
t := s^e mod N;
evalb(t = m);
# Expected from supplied screenshot: s = 327, t = 43.
