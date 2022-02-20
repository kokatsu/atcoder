import std;

void main() {
    int T;
    readf("%d\n", T);

    long f(long a, long d, long n) {
        return n * (a * 2 + (n + 1) * d) / 2;
    }

    foreach (_; 0 .. T) {
        long N, M;
        readf("%d %d\n", N, M);

        long res = long.min, num, rem, cnt = M;
        foreach (i; 0 .. N) {
            long x, y;
            readf("%d %d\n", x, y);

            if (cnt <= 0) continue;

            res = max(res, num+x);
            long c = min(cnt, y);

            if (x < 0 && rem > 0 && rem + x * c < 0) {
                long tmp = num + (rem + x + rem % x.abs) * (rem / x.abs) / 2;
                res = max(res, tmp);
            }

            num += f(rem, x, c);
            rem += x * y;
            res = max(res, num);
            cnt -= c;
        }

        res.writeln;
    }
}