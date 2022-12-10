import std;

void main() {
    long N, K, D;
    readf("%d %d %d\n", N, K, D);

    auto a = readln.chomp.split.to!(long[]);

    auto dp = new long[][](K+1, D);
    foreach (i; 0 .. K+1) dp[i][] = -1;
    dp[0][0] = 0;

    foreach (i, x; a) {
        foreach_reverse (j; 0 .. K) {
            foreach (k; 0 .. D) {
                if (dp[j][k] == -1) continue;

                long S = dp[j][k] + x;
                if (dp[j+1][(k+x)%D] < S) {
                    dp[j+1][(k+x)%D] = S;
                }
            }
        }
    }

    long res = dp[K][0];
    res.writeln;
}