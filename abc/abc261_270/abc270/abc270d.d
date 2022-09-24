import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.assumeSorted;

    auto dp = new int[](N+1);
    dp[1] = 1;
    foreach (i; 2 .. N+1) {
        auto lb = S.lowerBound(i+1).array;
        foreach (l; lb) {
            dp[i] = max(dp[i], i-dp[i-l]);
        }
    }

    int res = dp[N];
    res.writeln;
}