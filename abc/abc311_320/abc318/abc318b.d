import std;

enum int L = 100;

void main() {
    int N;
    readf("%d\n", N);

    auto M = new int[][](L + 1, L + 1);
    foreach (i; 0 .. N) {
        int A, B, C, D;
        readf("%d %d %d %d\n", A, B, C, D);

        ++M[A][C], ++M[B][D];
        --M[A][D], --M[B][C];
    }

    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            M[i][j + 1] += M[i][j];
        }
    }

    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            M[i + 1][j] += M[i][j];
        }
    }

    int res;
    foreach (i; 0 .. L) {
        foreach (j; 0 .. L) {
            if (M[i][j] > 0) {
                ++res;
            }
        }
    }

    res.writeln;
}
