import std;

void main() {
    int N;
    readfln("%d", N);

    int res = (1 << N) - 2 * N;
    res.writeln;
}
