import std;

void main() {
    int N;
    readfln("%d", N);

    bool[][] B = new bool[][](N, N + 1);
    foreach (i; 0 .. N) {
        int[] R = readln.chomp.split.to!(int[]);

        foreach (a; R[1 .. $]) {
            B[a - 1][i + 1] = true;
        }
    }

    int[][] C = new int[][](N);
    foreach (i; 0 .. N) {
        int[] K = N.iota.filter!(k => B[i][k + 1]).array;
        C[i].length = K.length + 1;
        C[i][0] = K.length.to!int;
        foreach (j; 0 .. K.length) {
            C[i][j + 1] = K[j] + 1;
        }
    }

    string res = format("%(%(%d %)\n%)", C);
    res.writeln;
}
