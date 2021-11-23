import std;

void main() {
    int N;
    readf("%d\n", N);

    string S = readln.chomp;

    string T = "atcoder";

    long M = 10 ^^ 9 + 7;

    auto dp = new long[][](N+1, T.length+1);
    dp[0][0] = 1;
    foreach (i; 0 .. N) {
        dp[i+1] = dp[i];

        foreach (j, t; T) {
            if (S[i] == T[j]) {
                dp[i+1][j+1] = (dp[i+1][j+1] + dp[i][j]) % M; 
            }
        }
    }

    dp[N][T.length].writeln;
}