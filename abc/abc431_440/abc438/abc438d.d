import std;

void main() {
    int N;
    readfln("%d", N);

    long[] A = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);
    long[] C = readln.chomp.split.to!(long[]);

    long[][] dp = new long[][](N, 3);
    dp[0][0] = A[0];
    dp[0][1 .. 3] = long.min;
    foreach (i; 1 .. N) {
        dp[i][0] = dp[i - 1][0] + A[i];
        dp[i][1] = max(dp[i - 1][0], dp[i - 1][1]) + B[i];
        dp[i][2] = max(dp[i - 1][1], dp[i - 1][2]) + C[i];
    }

    long res = dp[N - 1][2];
    res.writeln;
}
