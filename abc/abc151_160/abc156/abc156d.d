import std;

void main() {
    ulong n, a, b;
    readf("%d %d %d\n", n, a, b);

    ulong M = 10 ^^ 9 + 7;

    auto num = new ulong[](b+1), den = new ulong[](b+1);
    num[0] = 1, den[0] = 1;
    foreach (i; 0 .. b) {
        num[i+1] = (num[i] * (n - i)) % M;
        den[i+1] = (den[i] * (i + 1)) % M;
    }

    ulong res = powmod(2uL, n, M);
    res = (res + M - 1) % M;

    res = (res + M - (num[a] * powmod(den[a], M-2, M) % M)) % M;
    res = (res + M - (num[b] * powmod(den[b], M-2, M) % M)) % M;

    res.writeln;
}