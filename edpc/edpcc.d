import std;

void main() {
    int N;
    readf("%d\n", N);

    auto dp = new int[][](N + 1, 3);
    foreach (i; 0 .. N) {
        auto a = readln.chomp.split.to!(int[]);
        foreach (j; 0 .. 3) {
            foreach (k, x; a) {
                if (j == k)
                    continue;

                dp[i + 1][j] = max(dp[i + 1][j], dp[i][k] + x);
            }
        }
    }

    int res = dp[N].maxElement;
    res.writeln;
}
