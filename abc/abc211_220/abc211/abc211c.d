import std;

void main() {
    string S = readln.chomp;

    string T = "chokudai";

    long M = 10 ^^ 9 + 7;

    auto dp = new long[][](S.length + 1, T.length + 1);
    dp[0][0] = 1;
    foreach (i, s; S) {
        dp[i + 1][] = dp[i];
        foreach (j, t; T) {
            if (s == t) {
                dp[i + 1][j + 1] = (dp[i + 1][j + 1] + dp[i][j]) % M;
            }
        }
    }

    dp[S.length][T.length].writeln;
}
