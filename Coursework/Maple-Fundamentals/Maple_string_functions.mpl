# Maple bitwise and string processing — selected source commands, outputs omitted
restart:
with(Bits):
naive_OTP := proc(m, key)
    local i, c;
    c := [];
    for i to nops(m) do
        c := [op(c), Xor(m[i], key[i])];
    end do;
    return c;
end proc;
naive_OTP([1,1,0,1,1], [1,1,0,0,0]);
naive_OTP([0,0,0,1,1], [1,1,0,0,0]);
String(100, msbfirst, bits=8);
String(200, msbfirst, bits=8);
Xor(100,200);
String(172, msbfirst, bits=8);
with(StringTools):
message_string := "Hello World":
key_string := "aJWh129AsOP":
m := ToByteArray(message_string);
key := ToByteArray(key_string);
FromByteArray(m); FromByteArray(key);
with(ArrayTools):
string_OTP := proc(m_string, k_string)
    local i, m, n, key, msg;
    key := StringTools:-ToByteArray(k_string);
    msg := StringTools:-ToByteArray(m_string);
    m, n := ArrayTools:-Size(msg);
    for i from m to n do
        msg[i] := Bits:-Xor(msg[i], key[i]);
    end do;
    return StringTools:-FromByteArray(msg);
end proc;
cipher_string := string_OTP(message_string, key_string);
string_OTP(cipher_string, key_string);
# The original worksheet contains further Base64 byte investigations and
# generated outputs. They are not reproduced in this focused code example.
