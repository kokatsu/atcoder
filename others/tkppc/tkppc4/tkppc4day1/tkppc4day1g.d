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
    long Q;
    readf("%d\n", Q);

    auto N = readln.chomp.split.to!(long[]);

    long f(long x) {
        if (x % 3 == 1)
            return powMod(3, (x - 4) / 3) * 4 % MOD;
        if (x % 3 == 2)
            return powMod(3, x / 3) * 2 % MOD;
        return powMod(3, x / 3);
    }

    auto res = new long[](Q);
    foreach (i, n; N) {
        if (n <= 1)
            res[i] = n;
        else
            res[i] = f(n);
    }

    writefln("%(%s %)", res);
}
