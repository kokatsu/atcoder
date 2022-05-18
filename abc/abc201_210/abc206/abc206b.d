import std;

void main() {
    long N;
    readf("%d\n", N);

    long res;
    while (res * (res + 1) / 2 < N) ++res;

    res.writeln;
}