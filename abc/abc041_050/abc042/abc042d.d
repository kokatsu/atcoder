import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long h, w, a, b;
    readf("%d %d %d %d\n", h, w, a, b);

    long n = h + w;

    auto fac = new long[](n + 1);
    auto finv = new long[](n + 1);
    auto inv = new long[](n + 1);
    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;
    foreach (i; 2 .. n + 1) {
        fac[i] = fac[i - 1] * i % MOD;
        inv[i] = MOD - inv[MOD % i] * (MOD / i) % MOD;
        finv[i] = finv[i - 1] * inv[i] % MOD;
    }

    long comb(long x, long y) {
        if (x < y)
            return 0;
        if (x < 0 || y < 0)
            return 0;
        return fac[x] * (finv[y] * finv[x - y] % MOD) % MOD;
    }

    long res;
    foreach (i; 0 .. h - a) {
        res = (res + comb(b + i - 1, i) * comb(h - i + w - b - 2, h - i - 1)) % MOD;
    }

    res.writeln;
}
