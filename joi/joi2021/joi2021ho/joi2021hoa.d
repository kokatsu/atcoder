import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto L = new long[](N);
    foreach (i; 1 .. N) {
        L[i] += L[i - 1];

        long D = A[i - 1] - A[i];
        if (D >= 0) {
            L[i] += D + 1;
        }
    }

    auto R = new long[](N);
    foreach_reverse (i; 0 .. N - 1) {
        R[i] += R[i + 1];

        long D = A[i + 1] - A[i];
        if (D >= 0) {
            R[i] += D + 1;
        }
    }

    long res = iota(N).map!(i => max(L[i], R[i])).minElement;
    res.writeln;
}
