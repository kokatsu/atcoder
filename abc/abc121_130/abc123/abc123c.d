import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = new long[](5);
    foreach (i; 0 .. 5) readf("%d\n", A[i]);

    long M = A.minElement;

    long res = (N + M - 1) / M + 4;
    res.writeln;
}