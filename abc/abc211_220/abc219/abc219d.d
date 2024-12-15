import std;

void main() {
    int N, X, Y;
    readf("%d\n%d %d\n", N, X, Y);

    auto A = new int[](N + 1);
    auto B = new int[](N + 1);
    foreach (i; 1 .. N + 1) {
        readf("%d %d\n", A[i], B[i]);
    }

    auto dp = new int[][][](N + 1, X + 1, Y + 1);
    foreach (i; 0 .. N + 1) {
        foreach (j; 0 .. X + 1) {
            dp[i][j][] = int.max / 2;
        }
    }
    dp[0][0][0] = 0;

    foreach (i; 1 .. N + 1) {
        foreach (j; 0 .. X + 1) {
            foreach (k; 0 .. Y + 1) {
                dp[i][j][k] = min(dp[i][j][k], dp[i - 1][j][k]);
                int u = min(j + A[i], X);
                int v = min(k + B[i], Y);
                dp[i][u][v] = min(dp[i][u][v], dp[i - 1][j][k] + 1);
            }
        }
    }

    if (dp[N][X][Y] == int.max / 2) {
        dp[N][X][Y] = -1;
    }

    dp[N][X][Y].writeln;
}
