import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int S = N + M;

    int res = S * (S - 1) / 2 - N * M;
    res.writeln;
}