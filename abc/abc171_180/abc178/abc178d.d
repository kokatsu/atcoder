import std;

void main() {
    long S;
    readf("%d\n", S);

    long MOD = 10 ^^ 9 + 7;

    void addMod(ref long x, long y) {
        x = (x + y) % MOD;
    }

    auto dp = new long[](S + 1);
    dp[0] = 1;
    foreach (i; 3 .. S + 1) {
        addMod(dp[i], dp[i - 1] + dp[i - 3]);
    }

    long res = dp[S];
    res.writeln;
}
