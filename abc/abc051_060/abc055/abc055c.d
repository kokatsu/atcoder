import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long L = min(N, M / 2);

    long res = L + max(0, M - L * 2) / 4;
    res.writeln;
}
