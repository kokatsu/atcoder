import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    long MOD = 998244353;

    auto dp = new long[][](N+1, K+1);
    dp[0][0] = 1;

    foreach (i; 0 .. N) {
        foreach_reverse (j; 0 .. K+1) {
            foreach (k; 1 .. M+1) {
                if (j + k > K) continue;
                dp[i+1][j+k] = (dp[i+1][j+k] + dp[i][j]) % MOD;
            }
        }
    }

    long res;
    foreach (i; 0 .. K+1) res = (res + dp[N][i]) % MOD;

    res.writeln;
}