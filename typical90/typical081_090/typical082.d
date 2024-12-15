import std;

enum long MOD = 10 ^^ 9 + 7;

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
    long L, R;
    readf("%d %d\n", L, R);

    long inv2 = powMod(2, MOD - 2);

    long f(long x) {
        long d = x.to!string
            .length
            .to!long;

        long res, p10 = 10, pre;
        foreach (i; 1 .. d + 1) {
            long t = min(p10 - 1, x) % MOD;
            long s = (t * (t + 1) % MOD * inv2 % MOD + MOD - pre) % MOD;
            res = (res + s * i) % MOD;
            p10 = (long.max / 10 > p10 ? p10 * 10 : long.max);
            pre = t * (t + 1) % MOD * inv2 % MOD;
        }

        return res;
    }

    long res = (f(R) + MOD - f(L - 1)) % MOD;
    res.writeln;
}
