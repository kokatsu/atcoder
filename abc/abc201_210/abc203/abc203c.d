import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    zip(A, B).sort!"a[0] < b[0]";

    long pos, yen = K;
    foreach (i; 0 .. N) {
        if (yen < A[i] - pos) {
            pos += yen;
            yen = 0;
            break;
        }

        yen += B[i] - A[i] + pos;
        pos = A[i];
    }
    pos += yen;

    pos.writeln;
}
