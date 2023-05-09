import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto dp = new int[][](N, N);
    dp[N-1][] = A[];
    foreach_reverse (i; 0 .. N-1) {
        foreach (j; 0 .. i+1) {
            if (i % 2 == 0) dp[i][j] = max(dp[i+1][j], dp[i+1][j+1]);
            else dp[i][j] = min(dp[i+1][j], dp[i+1][j+1]);
        }
    }

    int res = dp[0][0];
    res.writeln;
}