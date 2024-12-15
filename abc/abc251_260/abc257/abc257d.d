import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = new long[](N), y = new long[](N), P = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d %d\n", x[i], y[i], P[i]);

    auto mat = new long[][](N, N);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (i == j)
                continue;

            long xdiff = abs(x[i] - x[j]);
            long ydiff = abs(y[i] - y[j]);

            mat[i][j] = (xdiff + ydiff + P[i] - 1) / P[i];
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                mat[j][k] = min(mat[j][k], max(mat[j][i], mat[i][k]));
            }
        }
    }

    long res = long.max;
    foreach (i; 0 .. N)
        res = min(res, mat[i].maxElement);

    res.writeln;
}
