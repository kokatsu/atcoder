import std;

void main() {
    long N;
    readf("%d\n", N);

    auto dp = new long[][](N + 1, 2);
    foreach (i; 0 .. N) {
        long X, Y;
        readf("%d %d\n", X, Y);

        dp[i + 1][0] = dp[i][0];
        dp[i + 1][1] = dp[i][1];

        if (X == 0) {
            dp[i + 1][0] = max(dp[i + 1][0], dp[i][0] + Y, dp[i][1] + Y);
        }
        else {
            dp[i + 1][1] = max(dp[i + 1][1], dp[i][0] + Y);
        }
    }

    long res = dp[N].maxElement;
    res.writeln;
}
