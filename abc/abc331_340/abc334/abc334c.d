import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long res, M = K / 2;
    if (K % 2 == 0) {
        foreach (i; 0 .. M) {
            res += A[i * 2 + 1] - A[i * 2];
        }
    }
    else {
        auto L = new long[](M + 1);
        foreach (i; 0 .. M)
            L[i + 1] = A[i * 2 + 1] - A[i * 2] + L[i];

        auto R = new long[](M + 1);
        foreach_reverse (i; 0 .. M)
            R[i] = A[(i + 1) * 2] - A[i * 2 + 1] + R[i + 1];

        res = long.max;
        foreach (i; 0 .. M + 1) {
            res = min(res, L[i] + R[i]);
        }
    }

    res.writeln;
}
