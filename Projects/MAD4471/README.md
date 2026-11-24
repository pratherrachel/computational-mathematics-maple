# MAD4471 Project: Fermat's Factorization Attack on RSA

## Project Overview

This project explores the application of **Fermat's factorization method to RSA encryption** using Maple. The objective is to demonstrate how an RSA modulus constructed from two prime numbers that are very close together can be vulnerable to factorization.

The project uses symbolic computation and number theory to factor a large RSA modulus, verify the resulting prime factors, reconstruct the RSA private key, and decrypt an encrypted message.

**Software:** Maple 2023 or later  
**Programming Language:** Maple  
**Mathematical Topics:** Number Theory, Integer Factorization, Modular Arithmetic, RSA Cryptography

## Mathematical Background

### Fermat's Factorization Method

Fermat's factorization method is based on expressing an odd composite integer as the difference of two squares:

\[
N=a^2-b^2
\]

Using the difference-of-squares identity:

\[
N=(a+b)(a-b)
\]

Therefore, the factors of \(N\) can be determined by finding integers \(a\) and \(b\) such that:

\[
a^2-N=b^2
\]

This method is particularly effective when the two factors of \(N\) are close together.

### Application to RSA

RSA encryption relies on the computational difficulty of factoring a sufficiently large modulus:

\[
N=pq
\]

where \(p\) and \(q\) are distinct prime numbers.

If the factors can be determined, the Euler totient can be calculated:

\[
\phi(N)=(p-1)(q-1)
\]

Using the public exponent \(e\), the private exponent \(d\) can then be recovered by solving:

\[
ed\equiv1\pmod{\phi(N)}
\]

The recovered private exponent allows the ciphertext to be decrypted:

\[
m\equiv c^d\pmod N
\]

## Implementation in Maple

### Step 1: Factor the RSA Modulus

The program begins with a large RSA modulus \(N\) and applies Fermat's factorization method.

```maple
a := round(sqrt(N));
b2 := a*a - N;
b := sqrt(b2);

A := a + b;
B := a - b;
```

For the provided modulus, the computation produces:

```text
b2 = 9
b = 3
```

Consequently, the two factors are:

\[
A=a+3,\qquad B=a-3
\]

The factors differ by only 6, making this modulus particularly vulnerable to Fermat's method.

### Step 2: Verify the Factors

The program checks whether both factors are prime and verifies that their product equals the original modulus.

```maple
check_prime_A := isprime(A);
check_prime_B := isprime(B);
check_factors := evalb(A*B = N);
```

The Maple worksheet reports:

```text
check_prime_A = true
check_prime_B = true
check_factors = true
```

These results confirm that the factorization produces two prime factors whose product equals the original RSA modulus.

### Step 3: Recover the Private Exponent

Once the prime factors are known, the program computes Euler's totient and reconstructs the private exponent.

```maple
e := 65537;
phi := (A - 1)*(B - 1);
d := 1/e mod phi;

check_d := evalb(1 = e*d mod phi);
```

The worksheet reports:

```text
check_d = true
```

This verifies the modular inverse relationship between the public and private exponents.

### Step 4: Decrypt the Ciphertext

Using the recovered private exponent, the program decrypts the ciphertext through modular exponentiation.

```maple
m := Power(c, d) mod N;
```

The resulting integer is converted into hexadecimal representation:

```maple
mh := convert(m, hex);
```

The hexadecimal output is then interpreted using ASCII character encoding to recover the original message.

## Results

The Maple computations demonstrate that:

1. The large RSA modulus can be factored using Fermat's difference-of-squares approach.
2. The two recovered factors are prime and differ by only 6.
3. The RSA private exponent can be reconstructed from the factorization.
4. The ciphertext can be decrypted using the recovered private exponent.
5. The resulting integer can be converted to hexadecimal and interpreted as an ASCII-encoded message.

The example illustrates an important weakness in RSA key generation: **choosing prime factors that are too close together can make an otherwise large modulus susceptible to efficient factorization.**

## Limitations

This project investigates a deliberately vulnerable RSA modulus. Fermat's factorization is not a general-purpose efficient attack against correctly generated RSA keys.

The worksheet demonstrates the mathematical attack using Maple's symbolic and modular arithmetic capabilities. It does not implement or assess a complete real-world RSA cryptographic system.

## Running the Project

1. Open the project worksheet in Maple 2023 or a compatible newer release.
2. Initialize or restart the Maple session.
3. Execute the factorization commands.
4. Verify the prime-factor checks and modulus reconstruction.
5. Execute the RSA key-recovery and decryption commands.
6. Convert the resulting plaintext integer to hexadecimal and interpret the encoded message.

## Skills Demonstrated

- Symbolic computation with Maple
- Number theory and prime factorization
- Fermat's factorization method
- Modular arithmetic and modular inverses
- RSA encryption and decryption mathematics
- Verification of computational results
- Hexadecimal and ASCII conversion

## Conclusion

This project demonstrates how mathematical properties of the prime factors used in RSA can influence the security of an encrypted message.

By applying Fermat's factorization method, the RSA modulus was successfully factored, allowing reconstruction of the private exponent and decryption of the ciphertext.

The exercise connects fundamental concepts in number theory with a practical cryptographic vulnerability and demonstrates how symbolic computation can be used to investigate cryptographic algorithms.
