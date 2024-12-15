import std;

void main() {
    int X, Y, N;
    readf("%d %d %d\n", X, Y, N);

    auto dp = new int[](N + 1);
    dp[1 .. $] = int.max;
    foreach (i; 0 .. N) {
        dp[i + 1] = min(dp[i + 1], dp[i] + X);
        if (i + 3 <= N)
            dp[i + 3] = min(dp[i + 3], dp[i] + Y);
    }

    int res = dp[N];
    res.writeln;
}
