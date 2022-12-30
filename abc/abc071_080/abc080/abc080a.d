import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    int res = min(A*N, B);
    res.writeln;
}