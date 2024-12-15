import std;

void main() {
    long N, X;
    readf("%d %d\n", N, X);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N)
        readf("%d %d\n", A[i], B[i]);

    auto T = new long[](N + 1), M = new long[](N + 1);
    M[0] = long.max;
    foreach (i; 0 .. N) {
        T[i + 1] = T[i] + A[i] + B[i];
        M[i + 1] = min(M[i], B[i]);
    }

    long res = long.max;
    foreach_reverse (i; 1 .. N + 1) {
        if (i > X)
            continue;

        long num = T[i] + (X - i) * M[i];
        res = min(res, num);
    }

    res.writeln;
}
