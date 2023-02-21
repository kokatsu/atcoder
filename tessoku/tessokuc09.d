import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto dp = new long[](N);
    dp[0] = A[0], dp[1] = max(A[0], A[1]);
    foreach (i; 2 .. N) {
        dp[i] = max(dp[i-1], dp[i-2]+A[i]);
    }

    long res = dp[N-1];
    res.writeln;
}