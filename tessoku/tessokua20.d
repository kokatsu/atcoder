import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto u = S.length, v = T.length;

    int res = 0;
    auto dp = new int[][](u+1, v+1);
    foreach (i, s; S) {
        foreach (j, t; T) {
            if (s == t) {
                dp[i+1][j+1] = max(dp[i+1][j+1], dp[i][j]+1);
            }
            dp[i+1][j] = max(dp[i+1][j], dp[i][j]);
            dp[i][j+1] = max(dp[i][j+1], dp[i][j]);
        }

        res = max(res, dp[i+1][v]);
    }

    res = max(res, dp[u].maxElement);

    res.writeln;
}