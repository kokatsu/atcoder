import std;

void main() {
    long N, M, Q;
    readf("%d %d %d\n", N, M, Q);

    auto cum = new long[][](N + 1, N + 1);
    foreach (_; 0 .. M) {
        long L, R;
        readf("%d %d\n", L, R);

        ++cum[L][R];
    }

    foreach (i; 1 .. N + 1) {
        foreach (j; 1 .. N + 1) {
            cum[i][j] += cum[i - 1][j];
        }
    }

    foreach (i; 1 .. N + 1) {
        foreach (j; 1 .. N + 1) {
            cum[i][j] += cum[i][j - 1];
        }
    }

    foreach (_; 0 .. Q) {
        long p, q;
        readf("%d %d\n", p, q);

        --p;
        long res = cum[q][q] - cum[p][q] - cum[q][p] + cum[p][p];
        res.writeln;
    }
}
