import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new long[](N), B = new long[](N);
    long S;
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
        S -= A[i];
    }

    zip(A, B).sort!"a[0] * 2 + a[1] > b[0] * 2 + b[1]";

    long res;
    foreach (i; 0 .. N) {
        S += A[i] * 2 + B[i];
        ++res;

        if (S > 0) {
            break;
        }
    }

    res.writeln;
}
