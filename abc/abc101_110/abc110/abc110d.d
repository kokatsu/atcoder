import std;

enum long MOD = 10 ^^ 9 + 7;

void mulMod(ref long x, long y) {
    x = (x * y) % MOD;
}

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long d = 2;
    long[long] cnts;
    while (d * d <= M) {
        while (M % d == 0) {
            ++cnts[d];
            M /= d;
        }

        ++d;
    }

    if (M > 1)
        ++cnts[M];

    long L = 2 * 10 ^^ 5;
    auto fac = new long[](L + 1);
    auto finv = new long[](L + 1);
    auto inv = new long[](L + 1);
    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;
    foreach (i; 2 .. L + 1) {
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

    long res = 1;
    foreach (cnt; cnts.byValue) {
        mulMod(res, comb(N + cnt - 1, cnt));
    }

    res.writeln;
}
