import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] p = readln.chomp.split.to!(int[]);

    int[] dp = new int[](N);
    dp[] = -1;
    foreach (i; 0 .. M) {
        int x, y;
        readfln("%d %d", x, y);

        --x;
        dp[x] = max(dp[x], y);
    }

    foreach (i; 1 .. N) {
        dp[i] = max(dp[i], dp[p[i - 1] - 1] - 1);
    }

    ulong res = dp.count!((x) => x >= 0);
    res.writeln;
}
