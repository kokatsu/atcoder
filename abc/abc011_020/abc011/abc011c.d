import std;

void main() {
    int N;
    readf("%d\n", N);

    auto NG = new int[](3);
    foreach (i; 0 .. 3)
        readf("%d\n", NG[i]);

    auto dp = new int[](N + 1);
    dp[N] = 101;

    foreach (ng; NG) {
        if (ng <= N)
            dp[ng] = -1;
    }

    foreach_reverse (i; 1 .. N + 1) {
        if (dp[i] == -1)
            continue;

        foreach (j; 1 .. 4) {
            int k = i - j;
            if (k < 0)
                continue;
            if (dp[k] == -1)
                continue;

            dp[k] = max(dp[k], dp[i] - 1);
        }
    }

    writeln(dp[0] > 0 ? "YES" : "NO");
}
