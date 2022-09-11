import std;

void main() {
    long X;
    readf("%d\n", X);

    long res, N = 100;
    while (N < X) {
        ++res, N += N / 100;
    }

    res.writeln;
}