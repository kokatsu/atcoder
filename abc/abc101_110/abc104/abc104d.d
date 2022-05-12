import std;

void main() {
    auto S = readln.chomp;

    long M = 10 ^^ 9 + 7;

    long N = 3;
    auto L = S.length;

    auto dp = new long[][](L+1, N+1);
    dp[0][0] = 1;
    foreach (i, s; S) {
        long c = (s == '?' ? N : 1);
        dp[i+1][] = (c * dp[i][]) % M;

        foreach (j; 0 .. N) {
            if (s == '?' || j == s - 'A') {
                dp[i+1][j+1] = (dp[i+1][j+1] + dp[i][j]) % M;
            }
        }
    }

    long res = dp[L][N];
    res.writeln;
}