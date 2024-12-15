import std;

enum ulong MOD = 10 ^^ 9 + 7;

void main() {
    ulong N;
    readf("%d\n", N);

    ulong X = powmod(10uL, N, MOD);
    ulong Y = powmod(9uL, N, MOD);
    ulong Z = powmod(8uL, N, MOD);

    ulong res = (X + MOD - (Y * 2) % MOD + Z) % MOD;
    res.writeln;
}
