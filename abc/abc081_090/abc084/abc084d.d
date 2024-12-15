import std;

void main() {
    long Q;
    readf("%d\n", Q);

    bool[] primeSieve(long x) {
        auto sieve = new bool[](x + 1);
        sieve[2 .. x] = true;
        long d = 2;
        while (d * d <= x) {
            if (sieve[d]) {
                foreach (i; iota(d * d, x + 1, d)) {
                    sieve[i] = false;
                }
            }
            ++d;
        }
        return sieve;
    }

    long lim = 10 ^^ 5;

    auto sieve = primeSieve(lim);

    auto dp = new long[](lim);
    foreach (i; 1 .. lim) {
        dp[i] = dp[i - 1];

        if (i % 2 == 0)
            continue;

        if (sieve[i] && sieve[(i + 1) / 2])
            ++dp[i];
    }

    foreach (_; 0 .. Q) {
        long l, r;
        readf("%d %d\n", l, r);

        long res = dp[r] - dp[l - 1];
        res.writeln;
    }
}
