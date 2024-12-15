import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long L = long.max / 2, res = L;

    void f(bool use) {
        auto dp = new long[][](N, 2);
        if (use)
            dp[0][1] = A[0], dp[0][0] = L;
        else
            dp[0][1] = L;

        foreach (i; 1 .. N) {
            dp[i][0] = dp[i - 1][1];
            dp[i][1] = dp[i - 1].minElement + A[i];
        }

        if (use)
            res = min(res, dp[N - 1].minElement);
        else
            res = min(res, dp[N - 1][1]);
    }

    f(true), f(false);

    res.writeln;
}
