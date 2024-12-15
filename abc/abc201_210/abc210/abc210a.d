import std;

void main() {
    long N, A, X, Y;
    readf("%d %d %d %d\n", N, A, X, Y);

    long res = min(N, A) * X + max(0, N - A) * Y;
    res.writeln;
}
