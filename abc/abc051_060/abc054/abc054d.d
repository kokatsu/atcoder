import std;

void main() {
    long N, Ma, Mb;
    readf("%d %d %d\n", N, Ma, Mb);

    long L = N * 10;
    auto dp = new long[][][](N + 1, L + 1, L + 1);
    foreach (i; 0 .. N + 1) {
        foreach (j; 0 .. L + 1) {
            dp[i][j][] = long.max;
        }
    }
    dp[0][0][0] = 0;
    foreach (i; 0 .. N) {
        long a, b, c;
        readf("%d %d %d\n", a, b, c);

        foreach (j; 0 .. L - a + 1) {
            foreach (k; 0 .. L - b + 1) {
                if (dp[i][j][k] == long.max)
                    continue;

                dp[i + 1][j + a][k + b] = min(dp[i + 1][j + a][k + b], dp[i][j][k] + c);
                dp[i + 1][j][k] = min(dp[i + 1][j][k], dp[i][j][k]);
            }
        }
    }

    long res = long.max;
    foreach (i; 1 .. N + 1) {
        long x = Ma * i, y = Mb * i;
        if (x > L || y > L)
            break;

        res = min(res, dp[N][x][y]);
    }

    if (res == long.max)
        res = -1;

    res.writeln;
}
