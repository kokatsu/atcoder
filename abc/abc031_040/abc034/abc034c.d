import std;

void main() {
    long W, H;
    readf("%d %d\n", W, H);

    long MOD = 10 ^^ 9 + 7;

    --H, --W;

    long res = 1;
    foreach (i; 1 .. W + 1) {
        res = (res * (H + i)) % MOD;
        res = (res * powMod(i, MOD - 2, MOD)) % MOD;
    }

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
