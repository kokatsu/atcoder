import std;

void main() {
    int R, C;
    readf("%d %d\n", R, C);

    auto A = new int[][](2, 2);
    foreach (i; 0 .. 2)
        readf("%d %d\n", A[i][0], A[i][1]);

    int res = A[R - 1][C - 1];
    res.writeln;
}
