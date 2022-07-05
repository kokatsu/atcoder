import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto x = new long[](N), y = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", x[i], y[i]);

    auto u = x.dup, v = y.dup;
    u.sort, v.sort;

    long res = long.max;
    foreach (i; 0 .. N-1) {
        foreach (j; i+1 .. N) {
            foreach (k; 0 .. N-1) {
                foreach (l; k+1 .. N) {
                    long cnt;
                    foreach (a, b; zip(x, y)) {
                        if (a < u[i] || u[j] < a) continue;
                        if (b < v[k] || v[l] < b) continue;

                        ++cnt;
                    }

                    if (cnt < K) continue;

                    long S = (u[j] - u[i]) * (v[l] - v[k]);
                    res = min(res, S);
                }
            }
        }
    }

    res.writeln;
}