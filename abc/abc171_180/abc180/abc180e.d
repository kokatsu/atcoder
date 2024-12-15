import std;

void main() {
    long N;
    readf("%d\n", N);

    auto X = new long[](N), Y = new long[](N), Z = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d %d\n", X[i], Y[i], Z[i]);

    auto dists = new long[][](N, N);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            dists[i][j] = abs(X[i] - X[j]) + abs(Y[i] - Y[j]) + max(0, Z[i] - Z[j]);
        }
    }

    long l = 1 << N;
    auto dp = new long[][](N, l);
    foreach (i; 0 .. N)
        dp[i][] = long.max;
    dp[0][0] = 0;
    foreach (i; 0 .. l) {
        foreach (j; 0 .. N) {
            if (dp[j][i] == long.max)
                continue;

            foreach (k; 0 .. N) {
                if (j == k)
                    continue;

                dp[k][i | (1 << k)] = min(dp[k][i | (1 << k)], dp[j][i] + dists[j][k]);
            }
        }
    }

    long res = dp[0][l - 1];
    res.writeln;
}
