import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto A = readln.chomp.split.to!(long[]);

    auto dp = new long[][](M+1, N+1);
    foreach (i; 0 .. M+1) dp[i][] = long.min;
    dp[0][0] = 0;

    foreach (j, a; A) {
        foreach_reverse (i; 0 .. M) {
            dp[i+1][j+1] = max(dp[i+1][j+1], dp[i][max(0, j.to!long-K+1)..j+1].maxElement+a);
        }
    }

    long res = max(-1, dp[M][max(0, N-K+1)..N+1].maxElement);
    res.writeln;
}