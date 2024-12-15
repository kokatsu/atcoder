import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long res = ((N - M) * 100 + M * 1900) * 2 ^^ M;
    res.writeln;
}
