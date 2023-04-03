import std;

void main() {
    int N;
    readf("%d\n", N);

    auto h = readln.chomp.split.to!(int[]);

    auto dp = new int[](N);
    dp[1..$] = int.max;
    foreach (i; 1 .. N) {
        dp[i] = min(dp[i], dp[i-1]+abs(h[i]-h[i-1]));
        if (i > 1) dp[i] = min(dp[i], dp[i-2]+abs(h[i]-h[i-2]));
    }

    int pos = N - 1;
    int[] res = [N];
    while (pos > 0) {
        pos -= (dp[pos] == dp[pos-1]+abs(h[pos]-h[pos-1]) ? 1 : 2);
        res ~= pos + 1;
    }

    res.reverse;

    res.length.writeln;
    writefln("%(%s %)", res);
}