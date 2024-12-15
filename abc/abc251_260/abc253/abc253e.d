import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto MOD = 998244353;

    auto dp = new long[][](N, M + 1);
    dp[0][1 .. $] = 1;
    foreach (i; 1 .. N) {
        foreach (j; 1 .. M + 1) {
            dp[i - 1][j] = (dp[i - 1][j] + dp[i - 1][j - 1]) % MOD;
        }

        foreach (j; 1 .. M + 1) {
            long l = j - K;
            if (l > 0)
                dp[i][j] = (dp[i][j] + dp[i - 1][l]) % MOD;

            if (K == 0) {
                dp[i][j] = (dp[i][j] + MOD - dp[i - 1][j] + dp[i - 1][M]) % MOD;
            }
            else {
                long u = j + K;
                if (u <= M)
                    dp[i][j] = (dp[i][j] + MOD - dp[i - 1][u - 1] + dp[i - 1][M]) % MOD;
            }
        }
    }

    long res;
    foreach (i; 1 .. M + 1)
        res = (res + dp[N - 1][i]) % MOD;

    res.writeln;
}
