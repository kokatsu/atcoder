import std;

enum long MOD = 998_244_353;

void main() {
    string S;
    readfln("%s", S);

    size_t N = S.length;
    long[] R = S.map!(c => to!long(c - 'a')).array;
    long[][] dp = new long[][](N + 1, 3);
    foreach (i, r; R) {
        foreach (j; 0 .. 3) {
            if (j == r) {
                dp[i + 1][j] = (dp[i].sum + 1) % MOD;
            }
            else {
                dp[i + 1][j] = dp[i][j];
            }
        }
    }

    long res = dp[N].sum % MOD;
    res.writeln;
}
