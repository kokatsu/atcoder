import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) readf("%s\n", S[i]);

    auto dp = new long[][](H, W);
    dp[0][0] = 1;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (i > 0 && S[i][j] == '.') dp[i][j] += dp[i-1][j];
            if (j > 0 && S[i][j] == '.') dp[i][j] += dp[i][j-1];
        }
    }

    long res = dp[H-1][W-1];
    res.writeln;
}