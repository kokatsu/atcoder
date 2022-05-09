import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    auto dp = new long[](N);
    dp[1..$] = long.max;
    foreach (i; 1 .. N) {
        dp[i] = min(dp[i], dp[i-1]+abs(a[i]-a[i-1]));
        if (i > 1) dp[i] = min(dp[i], dp[i-2]+abs(a[i]-a[i-2]));
    }

    long res = dp.back;
    res.writeln;
}