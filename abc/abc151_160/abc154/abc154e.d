import std;

void main() {
    auto N = readln.chomp;

    long K;
    readf("%d\n", K);

    auto len = N.length;
    auto dp = new long[][][](len + 1, K + 2, 2);
    dp[0][0][0] = 1;

    foreach (i, n; N) {
        long d = n - '0';

        foreach (j; 0 .. K + 1) {
            foreach (k; 0 .. 2) {
                long L = (k == 0 ? d + 1 : 10);

                foreach (l; 0 .. L) {
                    dp[i + 1][l > 0 ? j + 1 : j][k | (l < d)] += dp[i][j][k];
                }
            }
        }
    }

    long res = dp[len][K].sum;
    res.writeln;
}
