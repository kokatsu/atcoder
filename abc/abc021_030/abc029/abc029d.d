import std;

void main() {
    string N;
    readf("%s\n", N);

    auto L = N.length;

    auto dp = new long[][][](L+1, L+1, 2);
    dp[0][0][0] = 1;
    foreach (i, x; N) {
        long d = x - '0';
        foreach (j; 0 .. L) {
            foreach (k; 0 .. 2) {
                long r = k == 1 ? 9 : d;
                foreach (l; iota(r+1)) {
                    dp[i+1][l==1?j+1:j][k|(l<r)] += dp[i][j][k];
                }
            }
        }
    }

    long res;
    foreach (i, x; dp[L]) {
        res += i * x.sum;
    }

    res.writeln;
}