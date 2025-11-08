import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] W, H, B;
    W.length = H.length = B.length = N;
    foreach (i; 0 .. N) {
        readf("%d %d %d\n", W[i], H[i], B[i]);
    }

    long S = W.sum;
    long L = (S + 1) / 2;

    long[] dp = new long[](S + 1);
    dp[S] = B.sum;

    foreach (i; 0 .. N) {
        foreach (j; L + W[i] .. S + 1) {
            long k = j - W[i];
            dp[k] = max(dp[k], dp[j] + H[i] - B[i]);
        }
    }

    long res = dp.maxElement;
    res.writeln;
}
