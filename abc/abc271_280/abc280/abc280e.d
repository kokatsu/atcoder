import std;

enum uint MOD = 998_244_353;

void main() {
    ulong N, P;
    readf("%d %d\n", N, P);

    ulong X = (P * powmod(100u, MOD - 2, MOD)) % MOD;
    ulong Y = (MOD + 1 - X) % MOD;

    auto dp = new ulong[](N + 1);
    foreach (i; 1 .. N + 1) {
        if (i > 1) {
            dp[i] = (dp[i - 2] * X) % MOD;
        }
        dp[i] = (dp[i] + dp[i - 1] * Y + 1) % MOD;
    }

    ulong res = dp[N];
    res.writeln;
}
