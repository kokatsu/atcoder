import std;

void main() {
    long N, T;
    readf("%d %d\n", N, T);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", A[i], B[i]);

    zip(A, B).sort!"a[0] > b[0]";

    auto dp = new long[][](N + 1, T);
    foreach (i; 0 .. N) {
        dp[i + 1][0] = B[i];

        foreach (j; 0 .. T) {
            dp[i + 1][j] = max(dp[i + 1][j], dp[i][j]);

            long k = j + A[i];
            if (k >= T)
                continue;
            dp[i + 1][k] = max(dp[i + 1][k], dp[i][j] + B[i]);
        }
    }

    long res = dp[N].maxElement;
    res.writeln;
}
