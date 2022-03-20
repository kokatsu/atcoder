import std;

void main() {
    long N, M, K, S, T, X;
    readf("%d %d %d %d %d %d\n", N, M, K, S, T, X);

    --S, --T, --X;

    auto U = new long[](M), V = new long[](M);
    foreach (i; 0 .. M) {
        readf("%d %d\n", U[i], V[i]);
        --U[i], --V[i];
    }

    long MOD = 998244353;

    auto dp = new long[][][](K+1, N, 2);
    if (S == X) dp[0][S][1] = 1;
    else dp[0][S][0] = 1;

    foreach (i; 0 .. K) {
        foreach (j; 0 .. M) {
            foreach (k; 0 .. 2) {
                if (U[j] == X) {
                    dp[i+1][U[j]][(k+1)%2] = (dp[i+1][U[j]][(k+1)%2] + dp[i][V[j]][k]) % MOD;
                }
                else {
                    dp[i+1][U[j]][k] = (dp[i+1][U[j]][k] + dp[i][V[j]][k]) % MOD;
                }

                if (V[j] == X) {
                    dp[i+1][V[j]][(k+1)%2] = (dp[i+1][V[j]][(k+1)%2] + dp[i][U[j]][k]) % MOD;
                }
                else {
                    dp[i+1][V[j]][k] = (dp[i+1][V[j]][k] + dp[i][U[j]][k]) % MOD;
                }
            }
        }
    }

    dp[K][T][0].writeln;
}