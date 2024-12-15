import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long MOD = 10 ^^ 9 + 7;

    auto fac = new long[](N + 1);
    auto finv = new long[](N + 1);
    auto inv = new long[](N + 1);
    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;
    foreach (i; 2 .. N + 1) {
        fac[i] = fac[i - 1] * i % MOD;
        inv[i] = MOD - inv[MOD % i] * (MOD / i) % MOD;
        finv[i] = finv[i - 1] * inv[i] % MOD;
    }

    long comb(long a, long b) {
        if (a < b)
            return 0;
        if (a < 0 || b < 0)
            return 0;
        return fac[a] * (finv[b] * finv[a - b] % MOD) % MOD;
    }

    long A = N - K + 1, B = K - 1;
    foreach (i; 0 .. K) {
        long res = comb(A, i + 1) * comb(B, i) % MOD;
        res.writeln;
    }
}
