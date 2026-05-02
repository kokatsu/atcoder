import std;

enum long MOD = 998_244_353;

void main() {
    string S;
    readfln("%s", S);

    size_t L = S.length;

    auto dp = new long[][](L + 1, 3);

    long res;
    foreach (i, s; S) {
        dp[i + 1][s - 'a'] = (dp[i].sum - dp[i][s - 'a'] + 1) % MOD;
        res = (res + dp[i + 1][s - 'a']) % MOD;
    }

    res.writeln;
}
