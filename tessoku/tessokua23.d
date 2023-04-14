import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int L = 1 << N;

    auto dp = new int[][](M+1, L);
    dp[0][1..$] = 1000;
    foreach (i; 0 .. M) {
        auto A = readln.chomp.split.to!(int[]);

        int B;
        foreach (j, a; A) {
            if (a == 1) B += 1 << j;
        }

        dp[i+1][] = dp[i][];
        foreach (j; 0 .. L) {
            dp[i+1][j|B] = min(dp[i+1][j|B], dp[i][j]+1);
        }
    }

    int res = (dp[M][L-1] == 1000 ? -1 : dp[M][L-1]);
    res.writeln;
}