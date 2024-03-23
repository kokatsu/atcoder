import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto C = readln.chomp.split.to!(long[]);

    long L = long.max / 2;

    auto dp = new long[][][](N, 2, 2);
    dp[0][0][1] = C[0], dp[0][1][] = L;
    foreach (i; 1 .. N) {
        if (S[i] == S[i-1]) {
            dp[i][0][0] = dp[i-1][0][1];
            dp[i][0][1] = dp[i-1][0][0] + C[i];
            dp[i][1][0] = min(dp[i-1][0][0], dp[i-1][1][1]);
            dp[i][1][1] = min(dp[i-1][0][1], dp[i-1][1][0]) + C[i];
        }
        else {
            dp[i][0][0] = dp[i-1][0][0];
            dp[i][0][1] = dp[i-1][0][1] + C[i];
            dp[i][1][0] = min(dp[i-1][0][1], dp[i-1][1][0]);
            dp[i][1][1] = min(dp[i-1][0][0], dp[i-1][1][1]) + C[i];
        }
    }

    long res = dp[N-1][1].minElement;
    res.writeln;
}