import std;

void main() {
    long N;
    readf("%d\n", N);

    auto dp = new long[][](31, 31);
    dp[0][0] = 1;
    foreach (i; 1 .. 31) {
        foreach (j; 0 .. i) {
            dp[j][i] = dp[j][i-1] * 3;
        }
        dp[i][i] = dp[0][i] + 1;
    }

    long res = -1;
    foreach (i; 1 .. 31) {
        if (dp[i][30] == N) {
            res = i;
        }
    }

    res.writeln;
}