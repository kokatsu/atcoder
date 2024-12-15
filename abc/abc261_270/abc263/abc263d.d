import std;

void main() {
    long N, L, R;
    readf("%d %d %d\n", N, L, R);

    auto A = readln.chomp.split.to!(long[]);

    long u = L;
    auto X = new long[][](N + 1, 2);
    foreach (i, a; A) {
        X[i + 1][0] = X[i].minElement + a;
        X[i + 1][1] = u;
        u += L;
    }

    long v = R;
    auto Y = new long[][](N + 1, 2);
    foreach_reverse (i, a; A) {
        Y[i][0] = Y[i + 1].minElement + a;
        Y[i][1] = v;
        v += R;
    }

    long res = long.max;
    foreach (i; 0 .. N + 1) {
        foreach (j; 0 .. 2) {
            foreach (k; 0 .. 2) {
                res = min(res, X[i][j] + Y[i][k]);
            }
        }
    }

    res.writeln;
}
