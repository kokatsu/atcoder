import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    auto C = A.dup, D = B.dup;
    auto U = N.iota.array, V = N.iota.array;
    zip(A, B, U).sort!"a[0] == b[0] ? a[1] < b[1] : a[0] < b[0]";
    zip(C, D, V).sort!"a[1] == b[1] ? a[0] < b[0] : a[1] < b[1]";

    int res;
    if (U[0] == V[0]) res = min(A[0]+D[0], max(A[0], D[1]), max(A[1], D[0]));
    else res = max(A[0], D[0]);

    res.writeln;
}