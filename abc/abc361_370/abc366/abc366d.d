import std;

void main() {
    long N;
    readf("%d\n", N);

    long[][][] A = new long[][][](N, N);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            A[i][j] = readln.chomp.split.to!(long[]);
        }
    }

    long[][][] C = new long[][][](N + 1, N + 1, N + 1);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. N) {
                C[i + 1][j + 1][k + 1] = C[i + 1][j + 1][k] + C[i][j + 1][k + 1] + C[i + 1][j][k + 1] - (
                        C[i + 1][j][k] + C[i][j + 1][k] + C[i][j][k + 1]) + C[i][j][k] + A[i][j][k];
            }
        }
    }

    long Q;
    readf("%d\n", Q);

    long[] V = new long[](Q);
    foreach (i; 0 .. Q) {
        long Lx, Rx, Ly, Ry, Lz, Rz;
        readf("%d %d %d %d %d %d\n", Lx, Rx, Ly, Ry, Lz, Rz);

        --Lx, --Ly, --Lz;

        V[i] = C[Rx][Ry][Rz] - (C[Rx][Ry][Lz] + C[Lx][Ry][Rz] + C[Rx][Ly][Rz])
            + C[Rx][Ly][Lz] + C[Lx][Ry][Lz] + C[Lx][Ly][Rz] - C[Lx][Ly][Lz];
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
