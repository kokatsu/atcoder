import std;

enum int MOD = 10 ^^ 4;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto sauces = new int[](N + 1);
    foreach (_; 0 .. K) {
        int A, B;
        readf("%d %d\n", A, B);

        sauces[A] = B;
    }

    auto dp = new int[][][](N + 1, 4, 4);
    dp[0][0][0] = 1;
    foreach (i; 1 .. N + 1) {
        if (i == 1) {
            if (sauces[i] > 0) {
                dp[i][sauces[i]][0] = dp[i - 1][0][0];
            }
            else {
                foreach (j; 1 .. 4) {
                    dp[i][j][0] = dp[i - 1][0][0];
                }
            }
        }
        else if (i == 2) {
            if (sauces[i] > 0) {
                foreach (j; 1 .. 4) {
                    dp[i][sauces[i]][j] = dp[i - 1][j][0];
                }
            }
            else {
                foreach (j; 1 .. 4) {
                    foreach (k; 1 .. 4) {
                        dp[i][j][k] = (dp[i][j][k] + dp[i - 1][k][0]) % MOD;
                    }
                }
            }
        }
        else {
            if (sauces[i] > 0) {
                if (sauces[i] > 0) {
                    foreach (j; 1 .. 4) {
                        foreach (k; 1 .. 4) {
                            if (sauces[i] == j && j == k)
                                continue;
                            dp[i][sauces[i]][j] = (dp[i][sauces[i]][j] + dp[i - 1][j][k]) % MOD;
                        }
                    }
                }
            }
            else {
                foreach (j; 1 .. 4) {
                    foreach (k; 1 .. 4) {
                        foreach (l; 1 .. 4) {
                            if (j == k && k == l)
                                continue;
                            dp[i][j][k] = (dp[i][j][k] + dp[i - 1][k][l]) % MOD;
                        }
                    }
                }
            }
        }
    }

    int res = dp[N].map!(x => x.sum).sum % MOD;
    res.writeln;
}
