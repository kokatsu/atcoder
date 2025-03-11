import std;

void main() {
    long X, Y, Z;
    string S;
    readf("%d %d %d\n%s\n", X, Y, Z, S);

    auto L = S.length;
    auto dp = new long[][](L + 1, 2);
    dp[0][0] = 0;
    dp[0][1] = Z;

    foreach (i; 0 .. L) {
        if (S[i] == 'a') {
            dp[i + 1][0] = min(dp[i][0] + X, dp[i][1] + Z + X);
            dp[i + 1][1] = min(dp[i][0] + Z + Y, dp[i][1] + Y);
        }
        else {
            dp[i + 1][0] = min(dp[i][0] + Y, dp[i][1] + Z + Y);
            dp[i + 1][1] = min(dp[i][0] + Z + X, dp[i][1] + X);
        }
    }

    long res = dp[L].minElement;
    res.writeln;
}
