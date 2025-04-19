import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = new long[](M), B = new long[](M);
    foreach (i; 0 .. M) {
        readf("%d %d\n", A[i], B[i]);

        --A[i], --B[i];
    }

    long[long] dict;
    foreach (i; 0 .. M) {
        if (A[i] <= N - B[i]) {
            ++dict[B[i] + A[i]];
        }
        else {
            ++dict[A[i] - (N - B[i])];
        }
    }

    long res = M * (M - 1) / 2;
    foreach (v; dict.values) {
        res -= v * (v - 1) / 2;
    }

    res.writeln;
}
