import std;

void main() {
    long n;
    readf("%d\n", n);

    auto dp = new long[][](n + 2, 3);
    dp[1][0] = 1;
    foreach (i; 2 .. n + 2) {
        dp[i][1] = dp[i - 1][0];
        dp[i][2] = dp[i - 1][2] + dp[i - 1][1];
        dp[i][0] = dp[i][2];
    }

    long res = dp[n + 1].sum;
    res.writeln;
}
