import std;

void main() {
    int N;
    readf("%d\n", N);

    long[] A = readln.chomp.split.to!(long[]);

    long[][] dp = new long[][](N + 1, 2);
    dp[0][1] = long.min;
    foreach (i, a; A) {
        dp[i + 1][0] = max(dp[i][0], dp[i][1] + a * 2);
        dp[i + 1][1] = max(dp[i][1], dp[i][0] + a);
    }

    long res = dp[N].maxElement;
    res.writeln;
}
