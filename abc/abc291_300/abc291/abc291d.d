import std;

enum long MOD = 998244353;

void addMod(ref long x, long y) {
    x = (x + y) % MOD;
}

void main() {
    long N;
    readf("%d\n", N);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    auto dp = new long[][](N, 2);
    dp[0][] = 1;
    foreach (i; 1 .. N) {
        if (A[i] != A[i-1]) addMod(dp[i][0], dp[i-1][0]);
        if (A[i] != B[i-1]) addMod(dp[i][0], dp[i-1][1]);
        if (B[i] != A[i-1]) addMod(dp[i][1], dp[i-1][0]);
        if (B[i] != B[i-1]) addMod(dp[i][1], dp[i-1][1]);
    }

    long res = dp[$-1].sum % MOD;
    res.writeln;
}