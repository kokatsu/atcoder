import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto A = new int[][](H);
    foreach (i; 0 .. H) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    auto rows = iota(0, H).map!(i => A[i].sum).array;

    auto T = A.transposed;
    auto cols = iota(0, W).map!(i => T[i].sum).array;

    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            int b = rows[i] + cols[j] - A[i][j];

            if (j == W - 1) {
                writeln(b);
            }
            else {
                write(b, " ");
            }
        }
    }
}
