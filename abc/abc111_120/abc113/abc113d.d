import std;

void main() {
    long H, W, K;
    readf("%d %d %d\n", H, W, K);

    long M = 10 ^^ 9 + 7;

    void addMod(ref long x, long y) {
        x = (x + y) % M;
    }

    long L = 1 << (W - 1);

    auto dp = new long[][](H+1, W);
    dp[0][0] = 1;
    foreach (i; 0 .. H) {
        dp[i+1][] = dp[i][];

        foreach (j; 1 .. L) {
            bool isOK = true, isSet;
            foreach (k; 0 .. W-1) {
                bool tmp = ((j >> k) & 1);
                if (isSet && tmp) isOK = false;
                isSet = tmp;
            }

            if (!isOK) continue;

            isSet = false;
            foreach (k; 0 .. W-1) {
                if ((j >> k) & 1) {
                    addMod(dp[i+1][k+1], dp[i][k]);
                    addMod(dp[i+1][k], dp[i][k+1]);
                    isSet = true;
                }
                else {
                    if (!isSet) addMod(dp[i+1][k], dp[i][k]);
                    isSet = false;
                }
            }
            if (!isSet) addMod(dp[i+1][W-1], dp[i][W-1]);
        }
    }

    long res = dp[H][K-1];
    res.writeln;
}