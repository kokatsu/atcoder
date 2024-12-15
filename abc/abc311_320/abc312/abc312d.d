import std;

enum long MOD = 998244353;

void main() {
    string S;
    readf("%s\n", S);

    auto l = S.length;

    auto dp = new long[][](l + 1, l + 1);
    dp[0][0] = 1;
    foreach (i, s; S) {
        foreach (j; 0 .. i + 1) {
            if (s == '(') {
                dp[i + 1][j + 1] = (dp[i + 1][j + 1] + dp[i][j]) % MOD;
            }
            else if (s == ')') {
                if (j > 0) {
                    dp[i + 1][j - 1] = (dp[i + 1][j - 1] + dp[i][j]) % MOD;
                }
            }
            else {
                dp[i + 1][j + 1] = (dp[i + 1][j + 1] + dp[i][j]) % MOD;
                if (j > 0) {
                    dp[i + 1][j - 1] = (dp[i + 1][j - 1] + dp[i][j]) % MOD;
                }
            }
        }
    }

    long res = dp[l][0];
    res.writeln;
}
