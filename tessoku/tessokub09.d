import std;

enum int L = 1501;

void main() {
    int N;
    readf("%d\n", N);

    auto dp = new int[][](L, L);
    foreach (_; 0 .. N) {
        int A, B, C, D;
        readf("%d %d %d %d\n", A, B, C, D);

        ++dp[A][B], --dp[C][B], --dp[A][D], ++dp[C][D];
    }

    foreach (i; 0 .. L) {
        foreach (j; 0 .. L - 1) {
            dp[i][j + 1] += dp[i][j];
        }
        if (i > 0)
            dp[i][] += dp[i - 1][];
    }

    int res;
    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            if (dp[i][j] > 0)
                ++res;
        }
    }

    res.writeln;
}
