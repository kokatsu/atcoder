import std;

void main() {
    int N, M, X, T, D;
    readf("%d %d %d %d %d\n", N, M, X, T, D);

    int A = T - D * X;

    int res = A + D * min(M, X);
    res.writeln;
}