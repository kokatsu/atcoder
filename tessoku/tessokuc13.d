import std;

enum long MOD = 10 ^^ 9 + 7;

long powMod(long x, long y) {
    long res = 1;
    while (y > 0) {
        if (y % 2 == 1) {
            res *= x;
            if (res > MOD)
                res %= MOD;
        }
        x *= x;
        if (x > MOD)
            x %= MOD;
        y /= 2;
    }
    return res;
}

void main() {
    long N, P;
    readf("%d %d\n", N, P);

    auto A = readln.chomp.split.to!(long[]);

    A[] %= MOD;

    long[long] cnts;
    long res;
    foreach (i, a; A) {
        if (a == 0) {
            if (P == 0)
                res += i.to!long;
        }
        else {
            long d = (P * powMod(a, MOD - 2)) % MOD;
            if (d in cnts)
                res += cnts[d];
        }

        ++cnts[a];
    }

    res.writeln;
}
