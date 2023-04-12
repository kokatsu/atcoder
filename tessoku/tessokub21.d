import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto dp = new int[][](N, N);
    foreach (i, s; S) {
        dp[i][i] = 1;
        if (i < N - 1) {
            dp[i][i+1] = (s == S[i+1] ? 2 : 1);
        }
    }

    foreach (i; 2 .. N) {
        foreach (l; 0 .. N - i) {
            int r = l + i;
            dp[l][r] = max(dp[l+1][r], dp[l][r-1]);
            if (S[l] == S[r]) dp[l][r] = max(dp[l][r], dp[l+1][r-1]+2);
        }
    }

    int res = dp[0][N-1];
    res.writeln;
}