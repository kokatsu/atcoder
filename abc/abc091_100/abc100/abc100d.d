import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto x = new long[](N), y = new long[](N), z = new long[](N);
    foreach (i; 0 .. N) readf("%d %d %d\n", x[i], y[i], z[i]);

    long f(Tuple!(long, long, long) t, int s) {
        return t[0] * ((-1) ^^ (s & 1)) + t[1] * ((-1) ^^ ((s >> 1) & 1)) + t[2] * ((-1) ^^ ((s >> 2) & 1));
    }

    long res;
    foreach (i; 0 .. 8) {
        zip(x, y, z).sort!((a, b) => f(a, i) > f(b, i));

        long u, v, w;
        foreach (j; 0 .. M) {
            u += x[j], v += y[j], w += z[j];
        }

        res = max(res, u.abs+v.abs+w.abs);
    }

    res.writeln;
}