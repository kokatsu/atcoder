import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    long M = 998244353;

    auto dp = new int[][](N, 10);
    dp[0][A[0]] = 1;
    foreach (i; 1 .. N) {
        foreach (j; 0 .. 10) {
            if (dp[i - 1][j] == 0) {
                continue;
            }

            int add = (j + A[i]) % 10;
            dp[i][add] += dp[i - 1][j];
            dp[i][add] %= M;

            int mul = (j * A[i]) % 10;
            dp[i][mul] += dp[i - 1][j];
            dp[i][mul] %= M;
        }
    }

    foreach (dn; dp[N - 1]) {
        dn.writeln;
    }
}
