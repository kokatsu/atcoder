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
    long n, r;
    readf("%d %d\n", n, r);

    long res = 1;
    foreach (i; 0 .. r) {
        res *= n - i;
        res %= MOD;
        res *= powMod(i+1, MOD-2);
        res %= MOD;
    }

    res.writeln;
}