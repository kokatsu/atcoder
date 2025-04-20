import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto S = new int[](N), C = new int[](N), P = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d %d\n", S[i], C[i], P[i]);
    }

    int L = 1 << N;
    auto dp = new real[][](L, X + 1);
    foreach (i; 0 .. L) {
        dp[i][] = 0.0;
    }

    foreach (i; 0 .. X + 1) {
        foreach (j; 0 .. L) {
            foreach (k; 0 .. N) {
                long m = i - C[k];
                if (m < 0) {
                    continue;
                }

                int l = j | (1 << k);
                if (l == j) {
                    continue;
                }

                real p = P[k] / 100.0;
                real v = (dp[l][m] + S[k]) * p + dp[j][m] * (1.0 - p);
                dp[j][i] = max(dp[j][i], v);
            }
        }
    }

    real res = dp[0][X];
    writefln("%.10f", res);
}
