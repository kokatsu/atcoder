import std;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto w = new long[](N), v = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", w[i], v[i]);

    long F = w.front, M = w.sum - F * N;

    long res;
    auto dp = new long[][][](N + 1, N + 1, M + 1);
    foreach (i; 0 .. N) {
        long D = w[i] - F;
        dp[i + 1][][] = dp[i][][];

        foreach_reverse (j; 0 .. N) {
            foreach (k; D .. M + 1) {
                long V = dp[i][j][k - D] + v[i];
                dp[i + 1][j + 1][k] = max(dp[i + 1][j + 1][k], V);

                if ((j + 1) * F + k <= W)
                    res = max(res, dp[i + 1][j + 1][k]);
            }
        }
    }

    res.writeln;
}
