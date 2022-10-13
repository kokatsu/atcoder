import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto s = new string[](H);
    foreach (i; 0 .. H) readf("%s\n", s[i]);

    long[][] dp = new long[][](H, W);
    dp[0][0] = (s[0][0] == '#');

    foreach (i; 1 .. H) {
        dp[i][0] = dp[i-1][0];
        if (s[i][0] == '#' && s[i-1][0] != '#') ++dp[i][0];
    }

    foreach (i; 1 .. W) {
        dp[0][i] = dp[0][i-1];
        if (s[0][i] == '#' && s[0][i-1] != '#') ++dp[0][i];
    }

    foreach (i; 1 .. H) {
        foreach (j; 1 .. W) {
            long x = dp[i][j-1] + (s[i][j] == '#' && s[i][j-1] != '#');
            long y = dp[i-1][j] + (s[i][j] == '#' && s[i-1][j] != '#');
            dp[i][j] = min(x, y);
        }
    }

    long res = dp[H-1][W-1];
    res.writeln;
}