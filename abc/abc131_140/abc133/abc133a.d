import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    int res = min(N*A, B);
    res.writeln;
}