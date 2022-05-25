import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = 100;

    int res = (N + M - 1) / M;
    res.writeln;
}