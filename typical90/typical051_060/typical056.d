import std;

void main() {
    int N, S;
    readf("%d %d\n", N, S);

    auto dp = new int[][](N+1, S+1);
    dp[0][0] = true;

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);

        foreach (j; A[i] .. S+1) {
            if (dp[i][j-A[i]]) dp[i+1][j] = true;
        }

        foreach (j; B[i] .. S+1) {
            if (dp[i][j-B[i]]) dp[i+1][j] = true;
        }
    }

    if (!dp[N][S]) {
        writeln("Impossible");
        return;
    }

    int M = S;
    auto T = new dchar[](N);
    foreach_reverse (i; 0 .. N) {
        if (M - A[i] >= 0 && dp[i][M-A[i]]) M -= A[i], T[i] = 'A';
        else M -= B[i], T[i] = 'B';
    }

    T.writeln;
}