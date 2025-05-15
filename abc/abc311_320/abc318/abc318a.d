import std;

void main() {
    int N, M, P;
    readf("%d %d %d\n", N, M, P);

    int res = (N - M + P) / P;
    res.writeln;
}
