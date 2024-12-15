import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto h = readln.chomp.split.to!(int[]);

    auto dp = new int[](N);
    dp[1 .. N] = int.max;
    foreach (i; 1 .. N) {
        foreach (j; max(0, i - K) .. i) {
            dp[i] = min(dp[i], dp[j] + abs(h[i] - h[j]));
        }
    }

    int res = dp[N - 1];
    res.writeln;
}
