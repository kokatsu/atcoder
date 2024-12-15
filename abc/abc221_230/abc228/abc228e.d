import std;

void main() {
    ulong N, K, M;
    readf("%d %d %d\n", N, K, M);

    enum ulong MOD = 998244353;

    ulong phi = MOD - 1;

    ulong a = powmod(K, N, phi);
    ulong res;
    if (M % MOD > 0) {
        res = powmod(M, a + phi, MOD);
    }

    res.writeln;
}
