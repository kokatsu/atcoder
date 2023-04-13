import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    A[] -= 1, B[] -= 1;

    auto dp = new int[](N);
    dp[1..$] = int.min;
    foreach (i; 0 .. N-1) {
        dp[A[i]] = max(dp[A[i]], dp[i]+100);
        dp[B[i]] = max(dp[B[i]], dp[i]+150);
    }

    int res = dp[N-1];
    res.writeln;
}