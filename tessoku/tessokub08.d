import std;

enum int L = 1500;

void main() {
    int N;
    readf("%d\n", N);

    auto dp = new int[][](L + 1, L + 1);
    foreach (_; 0 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);

        ++dp[X][Y];
    }

    foreach (i; 1 .. L + 1) {
        foreach (j; 0 .. L) {
            dp[i][j + 1] += dp[i][j];
        }
        dp[i][] += dp[i - 1][];
    }

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int a, b, c, d;
        readf("%d %d %d %d\n", a, b, c, d);

        --a, --b;

        int res = dp[c][d] - dp[a][d] - dp[c][b] + dp[a][b];
        res.writeln;
    }
}
