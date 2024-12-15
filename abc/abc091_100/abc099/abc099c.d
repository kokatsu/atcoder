import std;

void main() {
    long N;
    readf("%d\n", N);

    long[] op = [1];
    long a = 1, b = 1;
    foreach (i; 1 .. N) {
        a *= 9;
        if (a <= N)
            op ~= a;

        b *= 6;
        if (b <= N)
            op ~= b;
        else
            break;
    }

    auto dp = new long[](N + 1);
    dp[1 .. $] = long.max;
    foreach (x; op) {
        foreach (i; x .. N + 1) {
            dp[i] = min(dp[i], dp[i - x] + 1);
        }
    }

    dp[N].writeln;
}
