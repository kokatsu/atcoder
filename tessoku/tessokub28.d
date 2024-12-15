import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long N;
    readf("%d\n", N);

    auto dp = new long[](N);
    dp[0 .. 2] = 1;
    foreach (i; 2 .. N) {
        dp[i] = (dp[i - 1] + dp[i - 2]) % MOD;
    }

    long res = dp[N - 1];
    res.writeln;
}
