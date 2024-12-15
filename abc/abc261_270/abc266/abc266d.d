import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = new long[](N), X = new long[](N), A = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d %d\n", T[i], X[i], A[i]);

    void f(ref long x, long y) {
        x = max(x, y);
    }

    long M = T.back + 1;
    auto dp = new long[][](M, 5);
    foreach (i; 0 .. M)
        dp[i][] = long.min;
    dp[0][0] = 0;

    foreach (i; 1 .. M) {
        long t, x = -1, a;
        if (i == T.front) {
            t = T.front, x = X.front, a = A.front;
            T.popFront, X.popFront, A.popFront;
        }

        foreach (j; 0 .. 5) {
            if (j > 0) {
                f(dp[i][j], dp[i - 1][j - 1] + (j == x ? a : 0));
            }

            f(dp[i][j], dp[i - 1][j] + (j == x ? a : 0));

            if (j < 4) {
                f(dp[i][j], dp[i - 1][j + 1] + (j == x ? a : 0));
            }
        }
    }

    long res = dp[M - 1].maxElement;
    res.writeln;
}
