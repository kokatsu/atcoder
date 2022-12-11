import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    if (N > M) swap(N, M);

    long res = (N - 2) * (M - 2);
    if (N == 1) {
        res = (M == 1 ? 1 : M - 2);
    }

    res.writeln;
}