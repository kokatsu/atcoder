import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto dp = new long[][](H, W);
    dp[0][0] = 1;
    foreach (i; 0 .. H) {
        string a;
        readf("%s\n", a);

        foreach (j, x; a) {
            if (x == '#')
                continue;

            if (i > 0)
                dp[i][j] = (dp[i][j] + dp[i - 1][j]) % MOD;
            if (j > 0)
                dp[i][j] = (dp[i][j] + dp[i][j - 1]) % MOD;
        }
    }

    long res = dp[H - 1][W - 1];
    res.writeln;
}
