import std;

void main() {
    int L, X;
    readf("%d %d\n", L, X);

    int M = X % (L * 2);

    int res = min(M, L * 2 - M);
    res.writeln;
}
