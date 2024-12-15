import std;

enum long MOD = 998244353;

long powMod(long x, long y) {
    long res = 1;
    while (y > 0) {
        if (y & 1) {
            res *= x;
            if (res > MOD)
                res %= MOD;
        }
        x *= x;
        if (x > MOD)
            x %= MOD;
        y >>= 1;
    }
    return res;
}

void main() {
    long N;
    readf("%d\n", N);

    long res = (powMod(2, N) + MOD - N - 1) % MOD;
    res.writeln;
}
