import std;

void main() {
    int W;
    readf("%d\n", W);

    int N, K;
    readf("%d %d\n", N, K);

    void f(ref int x, int y) {
        x = max(x, y);
    }

    int res;
    auto dp = new int[][](W + 1, K + 1);
    foreach (_; 0 .. N) {
        int A, B;
        readf("%d %d\n", A, B);

        foreach_reverse (i; 0 .. W - A + 1) {
            foreach_reverse (j; 0 .. K) {
                f(dp[i + A][j + 1], dp[i][j] + B);
                f(res, dp[i + A][j + 1]);
            }
        }
    }

    res.writeln;
}
