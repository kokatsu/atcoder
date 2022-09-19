import std;

void main() {
    long N, A, B;
    readf("%d %d %d\n", N, A, B);

    long M = A + B;
    long D = N / M, R = N % M;

    long res = A * D + min(A, R);
    res.writeln;
}