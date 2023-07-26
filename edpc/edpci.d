import std;

void main() {
    int N;
    readf("%d\n", N);

    auto p = readln.chomp.split.to!(real[]);

    auto dp = new real[][](N+1, N+1);
    dp[0][] = 0.0;
    dp[0][0] = 1.0;
    foreach (i, x; p) {
        dp[i+1][] = 0.0;
        dp[i+1][0] = dp[i][0] * (1.0 - x);
        foreach (j; 1 .. i+2) {
            dp[i+1][j] = dp[i][j-1] * x + dp[i][j] * (1.0 - x);
        }
    }

    real res = 0.0;
    foreach (i; N/2+1 .. N+1) {
        res += dp[N][i];
    }

    writefln("%.15f", res);
}