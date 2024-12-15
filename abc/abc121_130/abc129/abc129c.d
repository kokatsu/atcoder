import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto broken = new bool[](N + 1);
    foreach (i; 0 .. M) {
        long a;
        readf("%d\n", a);

        broken[a] = true;
    }

    long MOD = 10 ^^ 9 + 7;
    auto dp = new int[](N + 1);
    dp[0] = 1;
    foreach (i; 0 .. N) {
        if (!broken[i + 1])
            dp[i + 1] = (dp[i + 1] + dp[i]) % MOD;
        if (i + 2 <= N && !broken[i + 2])
            dp[i + 2] = (dp[i + 2] + dp[i]) % MOD;
    }

    dp[N].writeln;
}
