import std;

void main() {
    long K;
    readf("%d\n", K);

    long M = 10 ^^ 9 + 7;

    auto dp = new long[][](K + 1, 9);
    dp[0][0] = 1;
    foreach (i; 0 .. K) {
        foreach (j; 0 .. 9) {
            foreach (k; 1 .. 10) {
                if (i + k > K)
                    break;

                dp[i + k][(j + k) % 9] = (dp[i + k][(j + k) % 9] + dp[i][j]) % M;
            }
        }
    }

    dp[K][0].writeln;
}
