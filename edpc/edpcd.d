import std;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto dp = new long[](W + 1);
    foreach (_; 0 .. N) {
        long w, v;
        readf("%d %d\n", w, v);

        foreach_reverse (i; w .. W + 1) {
            dp[i] = max(dp[i], dp[i - w] + v);
        }
    }

    long res = dp[W];
    res.writeln;
}
