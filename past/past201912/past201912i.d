import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto S = new string[](M);
    auto C = new long[](M);
    foreach (i; 0 .. M)
        readf("%s %d\n", S[i], C[i]);

    long L = 1 << N;
    auto dp = new long[](L);
    dp[1 .. L] = long.max / 2;
    foreach (i; 0 .. M) {
        long pos;

        foreach (j, x; S[i]) {
            if (x == 'Y')
                pos |= 1 << j;
        }

        foreach (j; 0 .. L) {
            dp[j | pos] = min(dp[j | pos], dp[j] + C[i]);
        }
    }

    long res = dp[L - 1] < long.max / 2 ? dp[L - 1] : -1;
    res.writeln;
}
