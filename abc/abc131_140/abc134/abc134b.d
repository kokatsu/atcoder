import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    int M = D * 2 + 1;

    int res = (N + M - 1) / M;
    res.writeln;
}