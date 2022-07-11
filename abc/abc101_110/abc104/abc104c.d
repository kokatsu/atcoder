import std;

void main() {
    long D, G;
    readf("%d %d\n", D, G);

    auto p = new long[](D), c = new long[](D);
    foreach (i; 0 .. D) readf("%d %d\n", p[i], c[i]);

    long res = long.max, lim = 1 << D, h = 100;
    foreach (i; 0 .. lim) {
        long num, cnt;
        foreach (j; 0 .. D) {
            if ((i >> j) & 1) {
                long s = h * (j + 1);
                num += s * p[j] + c[j], cnt += p[j];
            }
        }

        foreach_reverse (j; 0 .. D) {
            if (num >= G) break;

            if ((i >> j) & 1) continue;

            long diff = G - num, s = h * (j + 1);
            long tmp = min(p[j]-1, (diff+s-1)/s);
            num += s * tmp, cnt += tmp;
        }

        if (num >= G) res = min(res, cnt);
    }

    res.writeln;
}