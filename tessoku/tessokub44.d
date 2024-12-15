import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[][](N);
    foreach (i; 0 .. N)
        A[i] = readln.chomp.split.to!(int[]);

    auto P = iota(N).array;

    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        int op, x, y;
        readf("%d %d %d\n", op, x, y);

        --x, --y;

        if (op == 1) {
            P.swapAt(x, y);
        }
        else {
            A[P[x]][y].writeln;
        }
    }
}
