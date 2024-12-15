import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto graph = new int[][](N);
    foreach (_; 0 .. M) {
        int x, y;
        readf("%d %d\n", x, y);

        graph[x - 1] ~= y - 1;
    }

    auto dp = new int[](N);
    dp[] = -1;

    int f(int x) {
        if (dp[x] >= 0)
            return dp[x];

        dp[x] = 0;
        foreach (g; graph[x]) {
            dp[x] = max(dp[x], f(g) + 1);
        }

        return dp[x];
    }

    foreach (i; 0 .. N) {
        if (dp[i] >= 0)
            continue;

        f(i);
    }

    auto res = dp.maxElement;
    res.writeln;
}
