import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto x = new long[](N), y = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", x[i], y[i]);

    auto u = x.dup, v = x.dup;
    u[] += y[], v[] -= y[];
    auto a = iota(N).array, b = a.dup;
    zip(u, a).sort, zip(v, b).sort;

    auto D = new long[](N);

    foreach (i; 0 .. N) {
        long s = max(abs(u[i] - u.front), abs(u[i] - u.back));
        D[a[i]] = max(D[a[i]], s);

        long t = max(abs(v[i] - v.front), abs(v[i] - v.back));
        D[b[i]] = max(D[b[i]], t);
    }

    foreach (_; 0 .. Q) {
        long q;
        readf("%d\n", q);

        D[q - 1].writeln;
    }
}
