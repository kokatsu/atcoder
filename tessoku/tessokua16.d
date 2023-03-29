import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[][](2);
    foreach (i; 0 .. 2) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    int[] dp = new int[](N);
    dp[1..$] = int.max;
    foreach (i; 1 .. N) {
        dp[i] = min(dp[i], dp[i-1]+A[0][i-1]);
        if (i > 1) dp[i] = min(dp[i], dp[i-2]+A[1][i-2]);
    }

    int res = dp[N-1];
    res.writeln;
}