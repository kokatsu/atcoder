import std;

void main() {
    int N;
    readf("%d\n", N);

    auto P = new int[](N), A = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", P[i], A[i]);

    P[] -= 1;

    auto dp = new int[][](N, N);
    foreach_reverse (i; 0 .. N) {
        foreach (l; 0 .. N-i) {
            int r = l + i;

            if (l > 0) {
                int s = (l <= P[l-1] && P[l-1] <= r ? A[l-1] : 0);
                dp[l][r] = max(dp[l][r], dp[l-1][r] + s);
            }

            if (r < N - 1) {
                int s = (l <= P[r+1] && P[r+1] <= r ? A[r+1] : 0);
                dp[l][r] = max(dp[l][r], dp[l][r+1] + s);
            }
        }
    }

    int res = iota(N).map!(i => dp[i][i]).maxElement;
    res.writeln;
}