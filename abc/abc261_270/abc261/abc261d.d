import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto X = readln.chomp.split.to!(long[]);

    auto arr = new long[](N + 1);
    foreach (i; 0 .. M) {
        long C, Y;
        readf("%d %d\n", C, Y);

        arr[C] += Y;
    }

    auto dp = new long[][](N + 1, N + 1);
    foreach (i, x; X) {
        foreach (j; 0 .. i + 1) {
            long num = dp[i][j] + x + arr[j + 1];

            dp[i + 1][j + 1] = max(dp[i + 1][j + 1], num);
        }

        foreach (j; 0 .. i + 1) {
            dp[i + 1][0] = max(dp[i + 1][0], dp[i][j]);
        }
    }

    long res = dp[N].maxElement;
    res.writeln;
}
