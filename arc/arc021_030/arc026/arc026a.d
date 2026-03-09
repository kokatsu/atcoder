import std;

void main() {
    int N, A, B;
    readfln("%d %d %d", N, A, B);

    int M = min(5, N);

    int res = B * M + A * (N - M);
    res.writeln;
}
