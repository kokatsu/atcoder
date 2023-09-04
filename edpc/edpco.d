import std;
import core.bitop;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long N;
    readf("%d\n", N);

    auto a = new long[][](N);
    foreach (i; 0 .. N) a[i] = readln.chomp.split.to!(long[]);

    long L = 1 << N;
    auto dp = new long[](L);
    dp[0] = 1;
    foreach (i; 0 .. L) {
        foreach (j; 0 .. N) {
            if (!((i >> j) & 1) && a[j][i.popcnt]) {
                dp[i+(1<<j)] = (dp[i+(1<<j)] + dp[i]) % MOD;
            }
        }
    }

    long res = dp[L-1];
    res.writeln;
}