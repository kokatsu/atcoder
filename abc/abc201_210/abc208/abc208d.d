import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long L = long.max / 2;

    auto dists = new long[][](N, N);
    foreach (i; 0 .. N) {
        dists[i][] = L;
        dists[i][i] = 0;
    }

    foreach (_; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        dists[A-1][B-1] = C;
    }

    void f(ref long x, long y) {
        x = min(x, y);
    }

    long res;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                f(dists[j][k], dists[j][i]+dists[i][k]);
            }
        }

        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                if (dists[j][k] < L) res += dists[j][k];
            }
        }
    }

    res.writeln;
}