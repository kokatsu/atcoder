import std;

enum long MOD = 998_244_353;
enum long L = 11;

void main() {
    long N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    long[] C = new long[](L);
    long[] D = new long[](N);
    foreach (i, a; A) {
        D[i] = log10(a.to!real).floor.to!long + 1;
        ++C[D[i]];
    }

    long[] P = new long[](L);
    P[0] = 1;
    foreach (i; 1 .. L) {
        P[i] = P[i - 1] * 10 % MOD;
    }

    long res;
    foreach (i, a; A) {
        --C[D[i]];
        res = (res + a * i.to!long) % MOD;
        foreach (j, c; C) {
            res = (res + a * P[j] % MOD * c % MOD) % MOD;
        }
    }

    res.writeln;
}
