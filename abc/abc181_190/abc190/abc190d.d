import std;

void main() {
    long N;
    readf("%d\n", N);

    long res, M = N * 2, i = 1;
    while (i * i <= M) {
        long D = M - i * i + i;
        if (D % (i * 2) == 0) res += 2;
        ++i;
    }

    res.writeln;
}