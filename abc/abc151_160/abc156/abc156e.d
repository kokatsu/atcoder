import std;

enum long MOD = 10 ^^ 9 + 7;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

void main() {
    long n, k;
    readf("%d %d\n", n, k);

    auto fac = new long[](n+1);
    auto finv = new long[](n+1);
    auto inv = new long[](n+1);
    fac[0] = fac[1] = 1;
    finv[0] = finv[1] = 1;
    inv[1] = 1;
    foreach (i; 2 .. n+1) {
        fac[i] = fac[i-1] * i % MOD;
        inv[i] = MOD - inv[MOD%i] * (MOD / i) % MOD;
        finv[i] = finv[i-1] * inv[i] % MOD;
    }

    long comb(long a, long b) {
        if (a < b) return 0;
        if (a < 0 || b < 0) return 0;
        return fac[a] * (finv[b] * finv[a-b] % MOD) % MOD;
    }

    long res, l = min(n, k);
    foreach (i; 0 .. l+1) {
        addMod(res, comb(n, i)*comb(n-1, i)%MOD);
    }

    res.writeln;
}