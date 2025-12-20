import std;

enum long MOD = 998_244_353;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long[] A = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);

    auto S = B.sort;

    long[] D = new long[](M + 1);
    D[1 .. M + 1] = B.dup;

    long[] C = D.cumulativeFold!((a, b) => (a + b) % MOD).array;

    long res;
    foreach (a; A) {
        auto lb = S.lowerBound(a + 1);

        long L = lb.length.to!long;
        long X = (a * L % MOD + MOD - C[L]) % MOD;
        long Y = (C[M] + MOD - C[L] + MOD - (a * (M - L)) % MOD) % MOD;

        res = (res + X + Y) % MOD;
    }

    res.writeln;
}
