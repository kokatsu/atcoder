import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int res = N * K * (K + 1 + (N + 1) * 100) / 2;
    res.writeln;
}
