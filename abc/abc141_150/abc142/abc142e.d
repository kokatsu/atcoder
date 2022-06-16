import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long L = 1 << N, MX = long.max / 2;

    auto dp = new long[](L);
    dp[1..L] = MX;

    foreach (_; 0 .. M) {
        long a, b;
        readf("%d %d\n", a, b);

        auto c = readln.chomp.split.to!(long[]);

        long num;
        foreach (x; c) num += 1 << (x - 1);

        foreach_reverse (i; 0 .. L) {
            long j = i | num;
            if (j >= L) continue;

            dp[j] = min(dp[j], dp[i]+a);
        }
    }

    long res = (dp[L-1] == MX ? -1 : dp[L-1]);
    res.writeln;
}