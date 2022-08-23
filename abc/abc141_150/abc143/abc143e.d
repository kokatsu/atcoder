import std;

void main() {
    int N, M, L;
    readf("%d %d %d\n", N, M, L);

    void f(ref int x, int y) {
        if (x > y) x = y;
    }

    int lim = int.max / 2;

    auto dists = new int[][](N, N);
    foreach (i; 0 .. N) {
        dists[i][] = lim;
        dists[i][i] = 0;
    }

    foreach (_; 0 .. M) {
        int A, B, C;
        readf("%d %d %d\n", A, B, C);

        --A, --B;
        dists[A][B] = dists[B][A] = C;
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                f(dists[j][k], dists[j][i]+dists[i][k]);
            }
        }
    }

    auto times = new int[][](N, N);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            times[i][j] = (dists[i][j] <= L ? 1 : lim);
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                f(times[j][k], times[j][i]+times[i][k]);
            }
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (times[i][j] == lim) times[i][j] = -1;
            else --times[i][j];
        }
    }

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int s, t;
        readf("%d %d\n", s, t);

        int res = times[s-1][t-1];
        res.writeln;
    }
}