import std;

void main() {
    ulong A, B, C;
    readf("%d %d %d\n", A, B, C);

    ulong f = 4uL;
    ulong p = powmod(B, C, f) + f;

    ulong res = powmod(A, p, 10uL);
    res.writeln;
}