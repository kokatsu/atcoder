import std;

enum long L = 10 ^^ 6 + 1;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto w = new long[](N), v = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", w[i], v[i]);

    auto dp = new long[][](N + 1, L);
    foreach (i; 0 .. N)
        dp[i][] = long.max / 2;
    dp[0][0] = 0;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. L) {
            dp[i + 1][j] = (j < v[i] ? dp[i][j] : min(dp[i][j], dp[i][j - v[i]] + w[i]));
        }
    }

    foreach_reverse (i, d; dp[N]) {
        if (d <= W) {
            i.writeln;
            return;
        }
    }
}
