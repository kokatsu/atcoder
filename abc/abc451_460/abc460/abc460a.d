import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int res;
    while (M > 0) {
        M = N % M;
        ++res;
    }

    res.writeln;
}
