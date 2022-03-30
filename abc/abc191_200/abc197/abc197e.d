import std;

void main() {
    long N;
    readf("%d\n", N);

    auto mn = new long[](N+1), mx = new long[](N+1);
    mn[] = long.max, mx[] = long.min;
    foreach (_; 0 .. N) {
        long X, C;
        readf("%d %d\n", X, C);

        mn[C] = min(mn[C], X), mx[C] = max(mx[C], X);
    }

    long L, R;
    auto dp = new long[][](N+1, 2);
    foreach (i; 1 .. N+1) {
        if (mn[i] == long.max) {
            dp[i][] = dp[i-1][];
        }
        else {
            long D = mx[i] - mn[i];
            dp[i][0] = min(dp[i-1][0]+abs(L-mx[i]), dp[i-1][1]+abs(R-mx[i])) + D;
            dp[i][1] = min(dp[i-1][0]+abs(L-mn[i]), dp[i-1][1]+abs(R-mn[i])) + D;

            L = mn[i], R = mx[i];
        }
    }

    long res = min(dp[N][0]+L.abs, dp[N][1]+R.abs);
    res.writeln;
}