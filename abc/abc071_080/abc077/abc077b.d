import std;

void main() {
    long N;
    readf("%d\n", N);

    long d;
    while ((d + 1) ^^ 2 <= N) {
        ++d;
    }

    long res = d ^^ 2;
    res.writeln;
}
