import std;

void main() {
    long N;
    readf("%d\n", N);

    long res = N / 3 + N / 5 + N / 7 - N / 15 - N / 21 - N / 35 + N / 105;
    res.writeln;
}
