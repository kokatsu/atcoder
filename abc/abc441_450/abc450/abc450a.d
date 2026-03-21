import std;

void main() {
    int N;
    readfln("%d", N);

    string res = format("%(%d,%)", iota(N, 0, -1));
    res.writeln;
}
