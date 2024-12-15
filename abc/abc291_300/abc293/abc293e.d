import std;

void main() {
    long A, X, M;
    readf("%d %d %d\n", A, X, M);

    A %= M;

    long f(long x, long y, long z, long MOD) {
        if (z == 1) {
            return x % MOD;
        }
        long n = f(x, y, z / 2, MOD);
        long ret = (n + powMod(y, z / 2, M) * n) % MOD;
        if (z % 2 == 1) {
            ret = (x + y * ret) % MOD;
        }
        return ret;
    }

    long res = f(1, A, X, M);
    res.writeln;
}

long powMod(long x, long y, long z) {
    long res = 1;
    while (y > 0) {
        if (y % 2 == 1) {
            res *= x;
            if (res > z)
                res %= z;
        }
        x *= x;
        if (x > z)
            x %= z;
        y /= 2;
    }
    return res;
}
