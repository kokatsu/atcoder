import std;

enum long MOD = 998244353;

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
    long N;
    readf("%d\n", N);

    long inv5 = powMod(5, MOD-2);

    long[long] memo;

    long f(long x) {
        if (x >= N) return x == N ? 1 : 0;
        if (x in memo) return memo[x];

        long ret;
        foreach (i; 2 .. 7) ret = (ret + f(x*i)) % MOD;
        ret = (ret * inv5) % MOD;
        memo[x] = ret;

        return ret;
    }

    long res = f(1);
    res.writeln;
}