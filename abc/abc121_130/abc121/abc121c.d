import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    zip(A, B).sort!"a[0] < b[0]";

    long res, rem = M;
    foreach (i; 0 .. N) {
        if (rem <= B[i]) {
            res += A[i] * rem;
            break;
        }
        else {
            res += A[i] * B[i];
            rem -= B[i];
        }
    }

    res.writeln;
}