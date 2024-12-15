import std;

void main() {
    long N;
    readf("%d\n", N);

    long f(long x, long y, string op) {
        if (op == "AND")
            return x & y;
        else
            return x | y;
    }

    long M = 2;
    auto dp = new long[][](N + 1, M);
    dp[0][] = 1;
    foreach (i; 0 .. N) {
        auto S = readln.chomp;

        foreach (j; 0 .. M) {
            foreach (k; 0 .. M) {
                long l = f(j, k, S);
                dp[i + 1][l] += dp[i][j];
            }
        }
    }

    long res = dp[N][1];
    res.writeln;
}
