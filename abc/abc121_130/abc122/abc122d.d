import std;

void main() {
    long N;
    readf("%d\n", N);

    long MOD = 10 ^^ 9 + 7;

    void addMod(ref long x, long y) {
        x = (x + y) % MOD;
    }

    auto S = "ACGT";

    ulong[dchar] pos;
    foreach (i, s; S)
        pos[s] = i;

    bool f(dchar a, dchar b, dchar c) {
        bool check;
        check |= (a == 'A' && b == 'G' && c == 'C');
        check |= (a == 'G' && b == 'A' && c == 'C');
        check |= (a == 'A' && b == 'C' && c == 'G');
        return check;
    }

    bool g(dchar a, dchar b, dchar c, dchar d) {
        bool check = f(b, c, d);
        check |= (a == 'A' && c == 'G' && d == 'C');
        check |= (a == 'A' && b == 'G' && d == 'C');
        return check;
    }

    auto cp3 = cartesianProduct(S, S, S);
    auto cp4 = cartesianProduct(S, S, S, S);

    auto dp = new long[][][][](N + 1, 4, 4, 4);
    foreach (x; cp3) {
        if (f(x[0], x[1], x[2]))
            continue;

        ulong i = pos[x[0]], j = pos[x[1]], k = pos[x[2]];
        dp[3][i][j][k] = 1;
    }

    foreach (i; 3 .. N) {
        foreach (x; cp4) {
            if (g(x[0], x[1], x[2], x[3]))
                continue;

            ulong j = pos[x[0]], k = pos[x[1]], l = pos[x[2]], m = pos[x[3]];
            addMod(dp[i + 1][k][l][m], dp[i][j][k][l]);
        }
    }

    long res;
    foreach (x; cp3) {
        ulong i = pos[x[0]], j = pos[x[1]], k = pos[x[2]];
        addMod(res, dp[N][i][j][k]);
    }

    res.writeln;
}
