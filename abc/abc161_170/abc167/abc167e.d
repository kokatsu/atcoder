import std;

void main() {
    ulong N, M, K;
    readf("%d %d %d\n", N, M, K);

    ulong MOD = 998244353;

    auto fac = new ulong[](N + 1);
    auto finv = new ulong[](N + 1);
    auto inv = new ulong[](N + 1);
    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;
    foreach (i; 2 .. N + 1) {
        fac[i] = fac[i - 1] * i % MOD;
        inv[i] = MOD - inv[MOD % i] * (MOD / i) % MOD;
        finv[i] = finv[i - 1] * inv[i] % MOD;
    }

    ulong comb(ulong a, ulong b) {
        return fac[a] * (finv[b] * finv[a - b] % MOD) % MOD;
    }

    ulong res;
    foreach (i; 0 .. K + 1) {
        ulong num = M * powmod(M - 1, N - i - 1, MOD) % MOD;
        num = (num * comb(N - 1, i)) % MOD;
        res = (res + num) % MOD;
    }

    res.writeln;
}
