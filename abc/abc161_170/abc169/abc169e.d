import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    A.sort, B.sort;

    long L = A[N/2], R = B[N/2];
    if (N % 2 == 0) L += A[N/2-1], R += B[N/2-1];

    long res = R - L + 1;
    res.writeln;
}