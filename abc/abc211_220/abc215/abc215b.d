import std;

void main() {
    long N;
    readf("%d\n", N);

    long res;
    while (N > 1) {
        ++res;
        N /= 2;
    }

    res.writeln;
}
