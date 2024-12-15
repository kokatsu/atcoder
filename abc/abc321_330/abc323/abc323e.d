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
    long N, X;
    readf("%d %d\n", N, X);

    auto T = readln.chomp.split.to!(long[]);

    long inv = powMod(N, MOD - 2);

    auto dp = new long[](X + 1);
    dp[0] = 1;

    long res;
    if (T[0] > X)
        res = inv;
    foreach (i; 1 .. X + 1) {
        foreach (t; T) {
            if (t <= i)
                dp[i] = (dp[i] + dp[i - t]) % MOD;
        }

        dp[i] = dp[i] * inv % MOD;
        if (i + T[0] > X)
            res = (res + dp[i] * inv % MOD) % MOD;
    }

    res.writeln;
}
