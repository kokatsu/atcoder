import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long L = long.max / 2;
    auto dists = new long[][](N, N);
    foreach (i; 0 .. N) dists[i][] = L;

    void f(ref long x, long y) {
        if (x > y) x = y;
    }

    auto A = new long[](M), B = new long[](M), C = new long[](M);
    foreach (i; 0 .. M) {
        readf("%d %d %d\n", A[i], B[i], C[i]);

        --A[i], --B[i];
        f(dists[A[i]][B[i]], C[i]);
        f(dists[B[i]][A[i]], C[i]);
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                f(dists[j][k], dists[j][i]+dists[i][k]);
            }
        }
    }

    long res;
    foreach (i; 0 .. M) {
        bool isDelete;
        foreach (j; 0 .. N) {
            isDelete |= (dists[A[i]][j] + dists[j][B[i]] <= C[i]);
        }

        if (isDelete) ++res;
    }

    res.writeln;
}