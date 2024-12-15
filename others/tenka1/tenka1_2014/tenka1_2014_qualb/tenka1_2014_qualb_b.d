import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long N;
    readf("%d\n", N);

    string S;
    readf("%s\n", S);

    auto T = new string[](N);
    foreach (i; 0 .. N)
        readf("%s\n", T[i]);

    auto L = S.length;

    auto dp = new long[](L + 1);
    dp[0] = 1;
    foreach (i; 0 .. L) {
        foreach (t; T) {
            auto l = t.length;
            if (l + i > L)
                continue;

            if (S[i .. i + l] == t)
                dp[i + l] = (dp[i + l] + dp[i]) % MOD;
        }
    }

    long res = dp[L];
    res.writeln;
}
