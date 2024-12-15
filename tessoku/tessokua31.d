import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = N / 3 + N / 5 - N / 15;
    res.writeln;
}
