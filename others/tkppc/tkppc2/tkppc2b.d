import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto dp = new int[](M + 1);
    foreach (_; 0 .. N) {
        int V, T;
        readf("%d %d\n", V, T);

        foreach_reverse (i; 0 .. M - T + 1) {
            dp[i + T] = max(dp[i + T], dp[i] + V);
        }
    }

    int res = dp[M];
    res.writeln;
}
