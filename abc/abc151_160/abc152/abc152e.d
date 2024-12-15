import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(ulong[]);

    ulong MOD = 10 ^^ 9 + 7;

    ulong M = A.maxElement;

    auto lpf = iota(M + 1).array;
    foreach (i; 2 .. M + 1) {
        if (lpf[i] != i)
            continue;

        foreach (j; iota(i * i, M + 1, i)) {
            if (lpf[j] != j)
                continue;

            lpf[j] = i;
        }
    }

    auto cnts = new ulong[](M + 1);
    foreach (a; A) {
        ulong num = a;

        while (num > 1) {
            ulong p = lpf[num], cnt;

            while (num % p == 0) {
                num /= p;
                ++cnt;
            }

            cnts[p] = max(cnts[p], cnt);
        }
    }

    ulong l = 1;
    foreach (i, c; cnts) {
        if (c == 0)
            continue;

        l = (l * powmod(i, c, MOD)) % MOD;
    }

    ulong res;
    foreach (a; A) {
        res = (res + l * powmod(a, MOD - 2, MOD)) % MOD;
    }

    res.writeln;
}
