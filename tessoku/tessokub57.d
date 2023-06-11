import std;

const int L = 30;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto dp = new int[][](L, N+1);
    foreach (i; 1 .. N+1) {
        dp[0][i] = i;
        int j = i;
        while (j > 0) {
            dp[0][i] -= j % 10;
            j /= 10;
        }
    }

    foreach (i; 1 .. L) {
        foreach (j; 1 .. N+1) {
            dp[i][j] = dp[i-1][dp[i-1][j]];
        }
    }

    foreach (i; 1 .. N+1) {
        int res = i;
        foreach_reverse (j; 0 .. L) {
            if ((K >> j) & 1) res = dp[j][res];
        }
        res.writeln;
    }
}