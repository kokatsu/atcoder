import std;

void main() {
    long N, L;
    readf("%d %d\n", N, L);

    long M = 10 ^^ 9 + 7;

    auto dp = new long[](N+1);
    dp[0] = 1;
    foreach (i; 1 .. N+1) {
        dp[i] = (dp[i] + dp[i-1]) % M;
        if (i >= L) dp[i] = (dp[i] + dp[i-L]) % M;
    }

    long res = dp[N];
    res.writeln;
}