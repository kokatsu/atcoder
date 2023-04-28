import std;

enum long MOD = 10 ^^ 9 + 7;

long powMod(long x, long y) {
    long res = 1;
    while (y > 0) {
        if (y & 1) {
            res *= x;
            if (res > MOD) res %= MOD;
        }
        x *= x;
        if (x > MOD) x %= MOD;
        y >>= 1;
    }
    return res;
}

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    long d = 1, n = 1;
    foreach (i; 1 .. H) {
        d = d * i % MOD;
        n = n * i % MOD;
    }

    foreach (i; 1 .. W) {
        d = d * (H + i - 1) % MOD;
        n = n * i % MOD;
    }

    long res = d * powMod(n, MOD-2) % MOD;
    res.writeln;
}