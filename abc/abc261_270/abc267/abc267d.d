import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    void f(ref long x, long y) {
        x = max(x, y);
    }

    auto dp = new long[](M + 2);
    dp[1 .. $] = long.min;
    foreach (i, a; A) {
        long lim = min(i, M);

        foreach_reverse (j; 0 .. lim + 1) {
            f(dp[j + 1], dp[j] + (j + 1) * a);
        }
    }

    long res = dp[M];
    res.writeln;
}
