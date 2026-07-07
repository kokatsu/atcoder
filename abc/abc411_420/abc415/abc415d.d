import std;

void main() {
    long N, M;
    readfln("%d %d", N, M);

    long[] A = new long[](M), B = new long[](M);
    foreach (i; 0 .. M) {
        readfln("%d %d", A[i], B[i]);
    }

    zip(A, B).sort!((a, b) => a[0] - a[1] < b[0] - b[1]);

    long res, R = N;
    foreach (i; 0 .. M) {
        if (R < A[i]) {
            continue;
        }

        long D = (R - A[i]) / (A[i] - B[i]) + 1;
        res += D;
        R -= D * (A[i] - B[i]);
    }

    res.writeln;
}
