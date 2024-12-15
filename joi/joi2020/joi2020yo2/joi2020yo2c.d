import std;

void main() {
    int N;
    readf("%d\n", N);

    auto dp = new int[](N + 1);
    dp[1 .. $] = 1;
    foreach (i; 1 .. N) {
        int ds, rem = i;
        while (rem > 0) {
            ds += rem % 10;
            rem /= 10;
        }

        if (i + ds <= N) {
            dp[i + ds] += dp[i];
        }
    }

    int res = dp[N];
    res.writeln;
}
