import std;

void main() {
    int N;
    readf("%d\n", N);

    auto h = readln.chomp.split.to!(int[]);

    auto dp = new int[](N);
    dp[1 .. $] = int.max;
    foreach (i; 1 .. N) {
        dp[i] = min(dp[i], dp[i - 1] + abs(h[i] - h[i - 1]));
        if (i > 1)
            dp[i] = min(dp[i], dp[i - 2] + abs(h[i] - h[i - 2]));
    }

    int res = dp[N - 1];
    res.writeln;
}
