import std;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    zip(A, B).sort!((a, b) => a[0] > b[0]);

    long res;
    foreach (i; 0 .. N) {
        if (W <= 0) {
            break;
        }
        else if (W >= B[i]) {
            res += A[i] * B[i];
            W -= B[i];
        }
        else {
            res += A[i] * W;
            W = 0;
        }
    }

    res.writeln;
}