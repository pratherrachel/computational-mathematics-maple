# Bit strings and modular RSA arithmetic — readable transcription
restart:
with(Bits):
N := 1073: e := 23: d := 263:
X := convert("0101111111", decimal, binary);
String(383, msbfirst);
c := X^e mod N;
Y := c^d mod N;
String(Y, msbfirst);
c2 := 2^e*c mod N;
Y2 := c2^d mod N;
String(Y2, msbfirst);
X := convert("1101111111", decimal, binary);
c := X^e mod N;
c2 := 2^e*c mod N;
Y := c2^d mod N;
String(Y, msbfirst);
m2 := convert("11110", decimal, binary);
String((m2 + 2^11) mod N, msbfirst);
# Intentionally retains original exercise commands; not validated.
