import std;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto dp = new long[](W+1);
    foreach (_; 0 .. N) {
        long w, v;
        readf("%d %d\n", w, v);

        foreach_reverse (i; 0 .. W-w+1) {
            dp[i+w] = max(dp[i+w], dp[i]+v);
        }
    }

    long res = dp[W];
    res.writeln;
}