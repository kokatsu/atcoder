import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto X = new int[][](H + 1, W + 1);
    foreach (i; 1 .. H + 1) {
        X[i][1 .. $] = readln.chomp.split.to!(int[]);
        X[i][] += X[i - 1][];
    }

    foreach (i; 1 .. H + 1) {
        foreach (j; 0 .. W) {
            X[i][j + 1] += X[i][j];
        }
    }

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int A, B, C, D;
        readf("%d %d %d %d\n", A, B, C, D);

        --A, --B;

        int res = X[C][D] - X[A][D] - X[C][B] + X[A][B];
        res.writeln;
    }
}
