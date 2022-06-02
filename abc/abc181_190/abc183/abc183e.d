import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H);
    foreach (i; 0 .. H) S[i] = readln.chomp;

    long M = 10 ^^ 9 + 7;

    auto right = new long[][](H, W);
    auto down = new long[][](H, W);
    auto diag = new long[][](H, W);
    auto dp = new long[][](H, W);
    dp[0][0] = 1;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (i == 0 && j == 0) continue;
            if (S[i][j] == '#') continue;

            if (j > 0) right[i][j] = (right[i][j-1] + dp[i][j-1]) % M;
            if (i > 0) down[i][j] = (down[i-1][j] + dp[i-1][j]) % M;
            if (i > 0 && j > 0) diag[i][j] = (diag[i-1][j-1] + dp[i-1][j-1]) % M;
            dp[i][j] = (right[i][j] + down[i][j] + diag[i][j]) % M;
        }
    }

    long res = dp[H-1][W-1];
    res.writeln;
}