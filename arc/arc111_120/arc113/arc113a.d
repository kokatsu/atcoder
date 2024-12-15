import std;

void main() {
    long K;
    readf("%d\n", K);

    long res;
    foreach (i; 1 .. K + 1) {
        long N = K / i;

        foreach (j; 1 .. N + 1) {
            res += N / j;
        }
    }

    res.writeln;
}
