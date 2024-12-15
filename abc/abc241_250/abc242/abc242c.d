import std;

void main() {
    long N;
    readf("%d\n", N);

    long M = 998244353;

    auto dp = new long[][](N, 9);
    dp[0][] = 1;
    foreach (i; 1 .. N) {
        foreach (j; 0 .. 9) {
            if (j > 0)
                dp[i][j - 1] = (dp[i][j - 1] + dp[i - 1][j]) % M;
            dp[i][j] = (dp[i][j] + dp[i - 1][j]) % M;
            if (j < 8)
                dp[i][j + 1] = (dp[i][j + 1] + dp[i - 1][j]) % M;
        }
    }

    long res;
    foreach (j; 0 .. 9) {
        res = (res + dp[N - 1][j]) % M;
    }

    res.writeln;
}
