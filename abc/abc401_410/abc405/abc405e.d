import std;

enum long MOD = 998_244_353L;

void main() {
    long A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    long N = A + B + C + D;

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

    long res;
    foreach (i; 0 .. C + 1) {
        long l = comb(A + B + i, B);
        long r = comb(C + D - i - 1, D - 1);
        res = (res + l * r % MOD) % MOD;
    }

    res.writeln;
}
