import std;

enum int M = int.max / 2;

int solve(int N, string S) {
    auto dp = new int[][](N + 1, 3);
    foreach (i; 0 .. N + 1) {
        dp[i][] = M;
    }
    dp[0][0] = 0;

    foreach (i, s; S) {
        if (s == '0') {
            dp[i + 1][0] = dp[i][0];
            dp[i + 1][1] = min(dp[i][0], dp[i][1]) + 1;
            dp[i + 1][2] = min(dp[i][1], dp[i][2]);
        }
        else {
            dp[i + 1][0] = dp[i][0] + 1;
            dp[i + 1][1] = min(dp[i][0], dp[i][1]);
            dp[i + 1][2] = min(dp[i][1], dp[i][2]) + 1;
        }
    }

    return dp[N].minElement;
}

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        string S;
        readf("%d\n%s\n", N, S);

        int res = solve(N, S);
        res.writeln;
    }
}
