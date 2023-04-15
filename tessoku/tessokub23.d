import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = new real[](N), Y = new real[](N);
    foreach (i; 0 .. N) readf("%f %f\n", X[i], Y[i]);

    int L = 1 << N;

    auto dp = new real[][](L, N);
    foreach (i; 0 .. L) dp[i][] = real.max / 2.0;
    dp[0][0] = 0.0;
    foreach (i; 0 .. L) {
        foreach (j; 0 .. N) {
            if (dp[i][j] >= real.max / 2.0) continue;

            foreach (k; 0 .. N) {
                if ((i >> k) & 1) continue;

                real dist = hypot(X[j]-X[k], Y[j]-Y[k]);
                dp[i+(1<<k)][k] = min(dp[i+(1<<k)][k], dp[i][j]+dist);
            }
        }
    }

    real res = dp[L-1][0];
    writefln("%.15f", res);
}