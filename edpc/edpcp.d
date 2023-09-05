import std;

enum long MOD = 10 ^^ 9 + 7;

void main() {
    long N;
    readf("%d\n", N);

    auto tree = new long[][](N);
    foreach (_; 0 .. N-1) {
        long x, y;
        readf("%d %d\n", x, y);

        --x, --y;
        tree[x] ~= y, tree[y] ~= x;
    }

    auto dp = new long[][](N, 2);

    void f(long now, long pre) {
        long b = 1, w = 1;

        foreach (t; tree[now]) {
            if (t == pre) continue;

            f(t, now);

            b = (b * dp[t][1]) % MOD;
            w = (w * dp[t].sum) % MOD;
        }

        dp[now][0] = b;
        dp[now][1] = w;
    }

    f(0, -1);

    long res = dp[0].sum % MOD;
    res.writeln;
}