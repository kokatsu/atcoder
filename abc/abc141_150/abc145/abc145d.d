import std;

void main() {
    long X, Y;
    readf("%d %d\n", X, Y);

    long res;
    if ((X + Y) % 3 == 0) {
        long U = (X * 2 - Y) / 3, V = (Y * 2 - X) / 3;
        long L = U + V;
        long MOD = 10 ^^ 9 + 7;

        auto fac = new long[](L+1);
        auto finv = new long[](L+1);
        auto inv = new long[](L+1);
        fac[0] = fac[1] = 1;
        finv[0] = finv[1] = 1;
        inv[1] = 1;
        foreach (i; 2 .. L+1) {
            fac[i] = fac[i-1] * i % MOD;
            inv[i] = MOD - inv[MOD%i] * (MOD / i) % MOD;
            finv[i] = finv[i-1] * inv[i] % MOD;
        }

        long comb(long a, long b) {
            if (a < b) return 0;
            if (a < 0 || b < 0) return 0;
            return fac[a] * (finv[b] * finv[a-b] % MOD) % MOD;
        }

        res = comb(L, U);
    }

    res.writeln;
}