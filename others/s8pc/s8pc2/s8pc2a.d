import std;

void main() {
    string S;
    readf("%s\n", S);

    ulong L = S.length;

    auto dp = new int[][](L + 1, 2);
    foreach (i, s; S) {
        if (s == 'I') {
            dp[i + 1][0] = max(1, dp[i][1] + 1);
            dp[i + 1][1] = dp[i][1];
        }
        else {
            dp[i + 1][0] = dp[i][0];
            dp[i + 1][1] = dp[i][0] > 0 ? dp[i][0] + 1 : 0;
        }
    }

    int res = dp[L][0];
    res.writeln;
}
