import std;

void main() {
    int S, A, B, X;
    readf("%d %d %d %d\n", S, A, B, X);

    int C = A + B;
    int D = X / C;
    int M = X % C;

    int res = S * (A * D + min(M, A));
    res.writeln;
}
