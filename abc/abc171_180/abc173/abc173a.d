import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = 1000;

    int cnt = (N + M - 1) / M;

    int res = M * cnt - N;
    res.writeln;
}