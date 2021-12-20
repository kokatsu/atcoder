import std;

void main() {
    long H, W, K;
    readf("%d %d %d\n", H, W, K);

    long x1, y1, x2, y2;
    readf("%d %d %d %d\n", x1, y1, x2, y2);

    long M = 998244353;

    auto dp = new long[][](K+1, 4);
    if (x1 == x2 && y1 == y2) {
        dp[0][3] = 1;
    }
    else if (x1 == x2) {
        dp[0][1] = 1;
    }
    else if (y1 == y2) {
        dp[0][2] = 1;
    }
    else {
        dp[0][0] = 1;
    }


    long C = (H + W - 4 + M) % M;
    long H1 = (H - 1 + M) % M, H2 = (H - 2 + M) % M;
    long W1 = (W - 1 + M) % M, W2 = (W - 2 + M) % M;

    foreach (i; 0 .. K) {
        dp[i+1][0] = (dp[i][0] * C + dp[i][1] * H1 + dp[i][2] * W1) % M;
        dp[i+1][1] = (dp[i][0] + dp[i][1] * W2 + dp[i][3] * W1) % M;
        dp[i+1][2] = (dp[i][0] + dp[i][2] * H2 + dp[i][3] * H1) % M;
        dp[i+1][3] = (dp[i][1] + dp[i][2]) % M;
    }

    dp[K][3].writeln;
}