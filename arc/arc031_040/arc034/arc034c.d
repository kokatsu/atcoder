import std;

enum long MOD = 10 ^^ 9 + 7;

void mulMod(ref long x, long y) {
    x = (x * y) % MOD;
}

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    long[long] cnts;
    foreach (i; B + 1 .. A + 1) {
        long rem = i, d = 2;
        while (d * d <= rem) {
            while (rem % d == 0) {
                ++cnts[d];
                rem /= d;
            }

            ++d;
        }

        if (rem > 1)
            ++cnts[rem];
    }

    long res = 1;
    foreach (val; cnts.byValue) {
        mulMod(res, val + 1);
    }

    res.writeln;
}
