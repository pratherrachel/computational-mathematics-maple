# Selected executable examples from "Review Questions 1-4".
# NOTE: Source contains 7 encoded 2-D input cells, which could not be extracted
# byte-for-byte. This is a readable transcription of identifiable examples.
# Not a complete automatic conversion of the worksheet.

restart;
x := 2;
restart;

# Defining x*sin(x) using arrow syntax and procedures
f := x -> x*sin(x);
restart;
f := proc(x) x*sin(x); end proc;
restart;
f := unapply(x*sin(x), x);

# Maple mathematical symbols and operations
Pi;
exp(x);
e^x;
diff(cos(x), x);
int(cos(x), x);
int(cos(x), x = 0 .. 10);
int(x^2, x);
Int(x^2, x);
solve(3*x^2 + 4*x + 1 = 0, x);
solve(3*x^2 + 4*x + y = 0);

# Remaining worksheet code requires exporting 1-D input from Maple.
